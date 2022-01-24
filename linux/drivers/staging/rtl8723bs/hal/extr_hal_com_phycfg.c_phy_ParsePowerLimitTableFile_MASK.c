#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int RegDecryptCustomFile; } ;
struct adapter {TYPE_1__ registrypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*,char*,char,char) ; 
 int TXPWR_LMT_MAX_REGULATION_NUM ; 
 int _FAIL ; 
 int _SUCCESS ; 
 scalar_t__ FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,char*) ; 

__attribute__((used)) static int FUNC9(struct adapter *Adapter, char *buffer)
{
	u32 i = 0, forCnt = 0;
	u8 loadingStage = 0, limitValue = 0, fraction = 0;
	char *szLine, *ptmp;
	int	rtStatus = _SUCCESS;
	char band[10], bandwidth[10], rateSection[10],
		regulation[TXPWR_LMT_MAX_REGULATION_NUM][10], rfPath[10], colNumBuf[10];
	u8 colNum = 0;

	FUNC0("===>phy_ParsePowerLimitTableFile()\n");

	if (Adapter->registrypriv.RegDecryptCustomFile == 1)
		FUNC8(Adapter, buffer);

	ptmp = buffer;
	for (szLine = FUNC1(ptmp); szLine != NULL; szLine = FUNC1(ptmp)) {
		/*  skip comment */
		if (FUNC3(szLine)) {
			continue;
		}

		if (loadingStage == 0) {
			for (forCnt = 0; forCnt < TXPWR_LMT_MAX_REGULATION_NUM; ++forCnt)
				FUNC7((void *) regulation[forCnt], 0, 10);

			FUNC7((void *) band, 0, 10);
			FUNC7((void *) bandwidth, 0, 10);
			FUNC7((void *) rateSection, 0, 10);
			FUNC7((void *) rfPath, 0, 10);
			FUNC7((void *) colNumBuf, 0, 10);

			if (szLine[0] != '#' || szLine[1] != '#')
				continue;

			/*  skip the space */
			i = 2;
			while (szLine[i] == ' ' || szLine[i] == '\t')
				++i;

			szLine[--i] = ' '; /*  return the space in front of the regulation info */

			/*  Parse the label of the table */
			if (!FUNC5(szLine, &i, band, ' ', ',')) {
				FUNC0("Fail to parse band!\n");
				return _FAIL;
			}
			if (!FUNC5(szLine, &i, bandwidth, ' ', ',')) {
				FUNC0("Fail to parse bandwidth!\n");
				return _FAIL;
			}
			if (!FUNC5(szLine, &i, rfPath, ' ', ',')) {
				FUNC0("Fail to parse rf path!\n");
				return _FAIL;
			}
			if (!FUNC5(szLine, &i, rateSection, ' ', ',')) {
				FUNC0("Fail to parse rate!\n");
				return _FAIL;
			}

			loadingStage = 1;
		} else if (loadingStage == 1) {
			if (szLine[0] != '#' || szLine[1] != '#')
				continue;

			/*  skip the space */
			i = 2;
			while (szLine[i] == ' ' || szLine[i] == '\t')
				++i;

			if (!FUNC6((u8 *)(szLine + i), (u8 *)("START"), 5)) {
				FUNC0("Lost \"##   START\" label\n");
				return _FAIL;
			}

			loadingStage = 2;
		} else if (loadingStage == 2) {
			if (szLine[0] != '#' || szLine[1] != '#')
				continue;

			/*  skip the space */
			i = 2;
			while (szLine[i] == ' ' || szLine[i] == '\t')
				++i;

			if (!FUNC5(szLine, &i, colNumBuf, '#', '#')) {
				FUNC0("Fail to parse column number!\n");
				return _FAIL;
			}

			if (!FUNC2(colNumBuf, &colNum))
				return _FAIL;

			if (colNum > TXPWR_LMT_MAX_REGULATION_NUM) {
				FUNC0(
					"invalid col number %d (greater than max %d)\n",
					colNum, TXPWR_LMT_MAX_REGULATION_NUM
				);
				return _FAIL;
			}

			for (forCnt = 0; forCnt < colNum; ++forCnt) {
				u8 regulation_name_cnt = 0;

				/*  skip the space */
				while (szLine[i] == ' ' || szLine[i] == '\t')
					++i;

				while (szLine[i] != ' ' && szLine[i] != '\t' && szLine[i] != '\0')
					regulation[forCnt][regulation_name_cnt++] = szLine[i++];
				/* DBG_871X("regulation %s!\n", regulation[forCnt]); */

				if (regulation_name_cnt == 0) {
					FUNC0("invalid number of regulation!\n");
					return _FAIL;
				}
			}

			loadingStage = 3;
		} else if (loadingStage == 3) {
			char channel[10] = {0}, powerLimit[10] = {0};
			u8 cnt = 0;

			/*  the table ends */
			if (szLine[0] == '#' && szLine[1] == '#') {
				i = 2;
				while (szLine[i] == ' ' || szLine[i] == '\t')
					++i;

				if (FUNC6((u8 *)(szLine + i), (u8 *)("END"), 3)) {
					loadingStage = 0;
					continue;
				} else {
					FUNC0("Wrong format\n");
					FUNC0("<===== phy_ParsePowerLimitTableFile()\n");
					return _FAIL;
				}
			}

			if ((szLine[0] != 'c' && szLine[0] != 'C') ||
				 (szLine[1] != 'h' && szLine[1] != 'H')) {
				FUNC0("Meet wrong channel => power limt pair\n");
				continue;
			}
			i = 2;/*  move to the  location behind 'h' */

			/*  load the channel number */
			cnt = 0;
			while (szLine[i] >= '0' && szLine[i] <= '9') {
				channel[cnt] = szLine[i];
				++cnt;
				++i;
			}
			/* DBG_871X("chnl %s!\n", channel); */

			for (forCnt = 0; forCnt < colNum; ++forCnt) {
				/*  skip the space between channel number and the power limit value */
				while (szLine[i] == ' ' || szLine[i] == '\t')
					++i;

				/*  load the power limit value */
				cnt = 0;
				fraction = 0;
				FUNC7((void *) powerLimit, 0, 10);
				while ((szLine[i] >= '0' && szLine[i] <= '9') || szLine[i] == '.') {
					if (szLine[i] == '.') {
						if ((szLine[i+1] >= '0' && szLine[i+1] <= '9')) {
							fraction = szLine[i+1];
							i += 2;
						} else {
							FUNC0("Wrong fraction in TXPWR_LMT.txt\n");
							return _FAIL;
						}

						break;
					}

					powerLimit[cnt] = szLine[i];
					++cnt;
					++i;
				}

				if (powerLimit[0] == '\0') {
					powerLimit[0] = '6';
					powerLimit[1] = '3';
					i += 2;
				} else {
					if (!FUNC2(powerLimit, &limitValue))
						return _FAIL;

					limitValue *= 2;
					cnt = 0;
					if (fraction == '5')
						++limitValue;

					/*  the value is greater or equal to 100 */
					if (limitValue >= 100) {
						powerLimit[cnt++] = limitValue/100 + '0';
						limitValue %= 100;

						if (limitValue >= 10) {
							powerLimit[cnt++] = limitValue/10 + '0';
							limitValue %= 10;
						} else
							powerLimit[cnt++] = '0';

						powerLimit[cnt++] = limitValue + '0';
					} else if (limitValue >= 10) { /*  the value is greater or equal to 10 */
						powerLimit[cnt++] = limitValue/10 + '0';
						limitValue %= 10;
						powerLimit[cnt++] = limitValue + '0';
					}
					/*  the value is less than 10 */
					else
						powerLimit[cnt++] = limitValue + '0';

					powerLimit[cnt] = '\0';
				}

				/* DBG_871X("ch%s => %s\n", channel, powerLimit); */

				/*  store the power limit value */
				FUNC4(Adapter, (u8 *)regulation[forCnt], (u8 *)band,
					(u8 *)bandwidth, (u8 *)rateSection, (u8 *)rfPath, (u8 *)channel, (u8 *)powerLimit);

			}
		} else {
			FUNC0("Abnormal loading stage in phy_ParsePowerLimitTableFile()!\n");
			rtStatus = _FAIL;
			break;
		}
	}

	FUNC0("<===phy_ParsePowerLimitTableFile()\n");
	return rtStatus;
}