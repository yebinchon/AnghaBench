#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bfad_s {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IOCMD_ADAPTER_CFG_MODE 258 
#define  IOCMD_BOOT_CFG 257 
#define  IOCMD_BOOT_QUERY 256 
#define  IOCMD_CEE_GET_ATTR 255 
#define  IOCMD_CEE_GET_STATS 254 
#define  IOCMD_CEE_RESET_STATS 253 
#define  IOCMD_DEBUG_FW_CORE 252 
#define  IOCMD_DEBUG_FW_STATE_CLR 251 
#define  IOCMD_DEBUG_PORTLOG 250 
#define  IOCMD_DEBUG_PORTLOG_CLR 249 
#define  IOCMD_DEBUG_PORTLOG_CTL 248 
#define  IOCMD_DEBUG_START_DTRC 247 
#define  IOCMD_DEBUG_STOP_DTRC 246 
#define  IOCMD_DIAG_BEACON_LPORT 245 
#define  IOCMD_DIAG_DPORT_DISABLE 244 
#define  IOCMD_DIAG_DPORT_ENABLE 243 
#define  IOCMD_DIAG_DPORT_SHOW 242 
#define  IOCMD_DIAG_DPORT_START 241 
#define  IOCMD_DIAG_FWPING 240 
#define  IOCMD_DIAG_LB_STAT 239 
#define  IOCMD_DIAG_LED 238 
#define  IOCMD_DIAG_LOOPBACK 237 
#define  IOCMD_DIAG_MEMTEST 236 
#define  IOCMD_DIAG_QUEUETEST 235 
#define  IOCMD_DIAG_SFP 234 
#define  IOCMD_DIAG_TEMP 233 
#define  IOCMD_ETHBOOT_CFG 232 
#define  IOCMD_ETHBOOT_QUERY 231 
#define  IOCMD_FAA_QUERY 230 
#define  IOCMD_FABRIC_GET_LPORTS 229 
#define  IOCMD_FCPIM_DEL_ITN_STATS 228 
#define  IOCMD_FCPIM_FAILOVER 227 
#define  IOCMD_FCPIM_LUNMASK_ADD 226 
#define  IOCMD_FCPIM_LUNMASK_CLEAR 225 
#define  IOCMD_FCPIM_LUNMASK_DELETE 224 
#define  IOCMD_FCPIM_LUNMASK_DISABLE 223 
#define  IOCMD_FCPIM_LUNMASK_ENABLE 222 
#define  IOCMD_FCPIM_LUNMASK_QUERY 221 
#define  IOCMD_FCPIM_MODSTATS 220 
#define  IOCMD_FCPIM_MODSTATSCLR 219 
#define  IOCMD_FCPIM_PROFILE_OFF 218 
#define  IOCMD_FCPIM_PROFILE_ON 217 
#define  IOCMD_FCPIM_THROTTLE_QUERY 216 
#define  IOCMD_FCPIM_THROTTLE_SET 215 
#define  IOCMD_FCPORT_DISABLE 214 
#define  IOCMD_FCPORT_ENABLE 213 
#define  IOCMD_FCPORT_GET_STATS 212 
#define  IOCMD_FCPORT_RESET_STATS 211 
#define  IOCMD_FLASH_DISABLE_OPTROM 210 
#define  IOCMD_FLASH_ENABLE_OPTROM 209 
#define  IOCMD_FLASH_ERASE_PART 208 
#define  IOCMD_FLASH_GET_ATTR 207 
#define  IOCMD_FLASH_READ_PART 206 
#define  IOCMD_FLASH_UPDATE_PART 205 
#define  IOCMD_FRUVPD_GET_MAX_SIZE 204 
#define  IOCMD_FRUVPD_READ 203 
#define  IOCMD_FRUVPD_UPDATE 202 
#define  IOCMD_IOCFC_GET_ATTR 201 
#define  IOCMD_IOCFC_SET_INTR 200 
#define  IOCMD_IOC_DISABLE 199 
#define  IOCMD_IOC_ENABLE 198 
#define  IOCMD_IOC_FW_SIG_INV 197 
#define  IOCMD_IOC_GET_ATTR 196 
#define  IOCMD_IOC_GET_FWSTATS 195 
#define  IOCMD_IOC_GET_INFO 194 
#define  IOCMD_IOC_GET_STATS 193 
#define  IOCMD_IOC_PCIFN_CFG 192 
#define  IOCMD_IOC_RESET_FWSTATS 191 
#define  IOCMD_IOC_RESET_STATS 190 
#define  IOCMD_IOC_SET_ADAPTER_NAME 189 
#define  IOCMD_IOC_SET_PORT_NAME 188 
#define  IOCMD_ITNIM_GET_ATTR 187 
#define  IOCMD_ITNIM_GET_IOPROFILE 186 
#define  IOCMD_ITNIM_GET_IOSTATS 185 
#define  IOCMD_ITNIM_GET_ITNSTATS 184 
#define  IOCMD_ITNIM_RESET_STATS 183 
#define  IOCMD_LPORT_GET_ATTR 182 
#define  IOCMD_LPORT_GET_IOSTATS 181 
#define  IOCMD_LPORT_GET_RPORTS 180 
#define  IOCMD_LPORT_GET_STATS 179 
#define  IOCMD_LPORT_RESET_STATS 178 
#define  IOCMD_PCIFN_BW 177 
#define  IOCMD_PCIFN_CREATE 176 
#define  IOCMD_PCIFN_DELETE 175 
#define  IOCMD_PHY_GET_ATTR 174 
#define  IOCMD_PHY_GET_STATS 173 
#define  IOCMD_PHY_READ_FW 172 
#define  IOCMD_PHY_UPDATE_FW 171 
#define  IOCMD_PORT_BBCR_DISABLE 170 
#define  IOCMD_PORT_BBCR_ENABLE 169 
#define  IOCMD_PORT_BBCR_GET_ATTR 168 
#define  IOCMD_PORT_CFG_ALPA 167 
#define  IOCMD_PORT_CFG_MAXFRSZ 166 
#define  IOCMD_PORT_CFG_MODE 165 
#define  IOCMD_PORT_CFG_SPEED 164 
#define  IOCMD_PORT_CFG_TOPO 163 
#define  IOCMD_PORT_CLR_ALPA 162 
#define  IOCMD_PORT_DISABLE 161 
#define  IOCMD_PORT_ENABLE 160 
#define  IOCMD_PORT_GET_ATTR 159 
#define  IOCMD_PORT_GET_STATS 158 
#define  IOCMD_PORT_RESET_STATS 157 
#define  IOCMD_PREBOOT_QUERY 156 
#define  IOCMD_QOS_DISABLE 155 
#define  IOCMD_QOS_ENABLE 154 
#define  IOCMD_QOS_GET_ATTR 153 
#define  IOCMD_QOS_GET_STATS 152 
#define  IOCMD_QOS_GET_VC_ATTR 151 
#define  IOCMD_QOS_RESET_STATS 150 
#define  IOCMD_QOS_SET_BW 149 
#define  IOCMD_RATELIM_DEF_SPEED 148 
#define  IOCMD_RATELIM_DISABLE 147 
#define  IOCMD_RATELIM_ENABLE 146 
#define  IOCMD_RPORT_GET_ADDR 145 
#define  IOCMD_RPORT_GET_ATTR 144 
#define  IOCMD_RPORT_GET_STATS 143 
#define  IOCMD_RPORT_RESET_STATS 142 
#define  IOCMD_RPORT_SET_SPEED 141 
#define  IOCMD_SFP_MEDIA 140 
#define  IOCMD_SFP_SPEED 139 
#define  IOCMD_TFRU_READ 138 
#define  IOCMD_TFRU_WRITE 137 
#define  IOCMD_TRUNK_DISABLE 136 
#define  IOCMD_TRUNK_ENABLE 135 
#define  IOCMD_TRUNK_GET_ATTR 134 
#define  IOCMD_VF_GET_STATS 133 
#define  IOCMD_VF_RESET_STATS 132 
#define  IOCMD_VHBA_QUERY 131 
#define  IOCMD_VPORT_GET_ATTR 130 
#define  IOCMD_VPORT_GET_STATS 129 
#define  IOCMD_VPORT_RESET_STATS 128 
 int FUNC0 (struct bfad_s*,unsigned int,void*) ; 
 int FUNC1 (struct bfad_s*,void*) ; 
 int FUNC2 (struct bfad_s*,void*) ; 
 int FUNC3 (struct bfad_s*,void*) ; 
 int FUNC4 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC5 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC6 (struct bfad_s*,void*) ; 
 int FUNC7 (struct bfad_s*,void*) ; 
 int FUNC8 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC9 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC10 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC11 (struct bfad_s*,void*) ; 
 int FUNC12 (struct bfad_s*,void*) ; 
 int FUNC13 (struct bfad_s*,void*) ; 
 int FUNC14 (struct bfad_s*,void*) ; 
 int FUNC15 (struct bfad_s*,void*) ; 
 int FUNC16 (struct bfad_s*,void*) ; 
 int FUNC17 (struct bfad_s*,void*) ; 
 int FUNC18 (struct bfad_s*,void*) ; 
 int FUNC19 (struct bfad_s*,void*) ; 
 int FUNC20 (struct bfad_s*,void*) ; 
 int FUNC21 (struct bfad_s*,void*) ; 
 int FUNC22 (struct bfad_s*,void*) ; 
 int FUNC23 (struct bfad_s*,void*) ; 
 int FUNC24 (struct bfad_s*,void*) ; 
 int FUNC25 (struct bfad_s*,void*) ; 
 int FUNC26 (struct bfad_s*,void*) ; 
 int FUNC27 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC28 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC29 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC30 (struct bfad_s*,void*) ; 
 int FUNC31 (struct bfad_s*,void*) ; 
 int FUNC32 (struct bfad_s*,void*) ; 
 int FUNC33 (struct bfad_s*,void*) ; 
 int FUNC34 (struct bfad_s*,void*) ; 
 int FUNC35 (struct bfad_s*,void*) ; 
 int FUNC36 (struct bfad_s*,void*) ; 
 int FUNC37 (struct bfad_s*,void*) ; 
 int FUNC38 (struct bfad_s*,void*) ; 
 int FUNC39 (struct bfad_s*,void*) ; 
 int FUNC40 (struct bfad_s*,void*) ; 
 int FUNC41 (struct bfad_s*,void*) ; 
 int FUNC42 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC43 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC44 (struct bfad_s*,void*) ; 
 int FUNC45 (struct bfad_s*,void*) ; 
 int FUNC46 (struct bfad_s*,void*) ; 
 int FUNC47 (struct bfad_s*,void*) ; 
 int FUNC48 (struct bfad_s*,void*) ; 
 int FUNC49 (struct bfad_s*,void*) ; 
 int FUNC50 (struct bfad_s*,void*) ; 
 int FUNC51 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC52 (struct bfad_s*,void*) ; 
 int FUNC53 (struct bfad_s*,void*) ; 
 int FUNC54 (struct bfad_s*,void*) ; 
 int FUNC55 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC56 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC57 (struct bfad_s*,void*) ; 
 int FUNC58 (struct bfad_s*,void*) ; 
 int FUNC59 (struct bfad_s*,void*) ; 
 int FUNC60 (struct bfad_s*,void*) ; 
 int FUNC61 (struct bfad_s*,void*) ; 
 int FUNC62 (struct bfad_s*,void*) ; 
 int FUNC63 (struct bfad_s*,void*) ; 
 int FUNC64 (struct bfad_s*,void*) ; 
 int FUNC65 (struct bfad_s*,void*) ; 
 int FUNC66 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC67 (struct bfad_s*,void*) ; 
 int FUNC68 (struct bfad_s*,void*) ; 
 int FUNC69 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC70 (struct bfad_s*,void*) ; 
 int FUNC71 (struct bfad_s*,void*) ; 
 int FUNC72 (struct bfad_s*,void*) ; 
 int FUNC73 (struct bfad_s*,void*) ; 
 int FUNC74 (struct bfad_s*,void*) ; 
 int FUNC75 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC76 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC77 (struct bfad_s*,void*) ; 
 int FUNC78 (struct bfad_s*,void*) ; 
 int FUNC79 (struct bfad_s*,unsigned int,void*) ; 
 int FUNC80 (struct bfad_s*,void*) ; 
 int FUNC81 (struct bfad_s*,void*) ; 
 int FUNC82 (struct bfad_s*,void*) ; 
 int FUNC83 (struct bfad_s*,void*) ; 
 int FUNC84 (struct bfad_s*,void*) ; 
 int FUNC85 (struct bfad_s*,void*) ; 
 int FUNC86 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC87 (struct bfad_s*,void*) ; 
 int FUNC88 (struct bfad_s*,void*) ; 
 int FUNC89 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC90 (struct bfad_s*,void*) ; 
 int FUNC91 (struct bfad_s*,void*) ; 
 int FUNC92 (struct bfad_s*,void*) ; 
 int FUNC93 (struct bfad_s*,void*) ; 
 int FUNC94 (struct bfad_s*,void*) ; 
 int FUNC95 (struct bfad_s*,unsigned int,void*) ; 
 int FUNC96 (struct bfad_s*,unsigned int,void*) ; 
 int FUNC97 (struct bfad_s*,void*) ; 
 int FUNC98 (struct bfad_s*,void*) ; 
 int FUNC99 (struct bfad_s*,void*) ; 
 int FUNC100 (struct bfad_s*,void*) ; 
 int FUNC101 (struct bfad_s*,void*) ; 
 int FUNC102 (struct bfad_s*,void*,unsigned int) ; 
 int FUNC103 (struct bfad_s*,void*) ; 
 int FUNC104 (struct bfad_s*,void*) ; 
 int FUNC105 (struct bfad_s*,void*) ; 
 int FUNC106 (struct bfad_s*,void*) ; 
 int FUNC107 (struct bfad_s*,void*) ; 
 int FUNC108 (struct bfad_s*,void*) ; 
 int FUNC109 (struct bfad_s*,void*) ; 
 int FUNC110 (struct bfad_s*,void*) ; 
 int FUNC111 (struct bfad_s*,void*) ; 
 int FUNC112 (struct bfad_s*,void*) ; 
 int FUNC113 (struct bfad_s*,void*) ; 

__attribute__((used)) static int
FUNC114(struct bfad_s *bfad, unsigned int cmd, void *iocmd,
		unsigned int payload_len)
{
	int rc = -EINVAL;

	switch (cmd) {
	case IOCMD_IOC_ENABLE:
		rc = FUNC48(bfad, iocmd);
		break;
	case IOCMD_IOC_DISABLE:
		rc = FUNC47(bfad, iocmd);
		break;
	case IOCMD_IOC_GET_INFO:
		rc = FUNC52(bfad, iocmd);
		break;
	case IOCMD_IOC_GET_ATTR:
		rc = FUNC50(bfad, iocmd);
		break;
	case IOCMD_IOC_GET_STATS:
		rc = FUNC54(bfad, iocmd);
		break;
	case IOCMD_IOC_GET_FWSTATS:
		rc = FUNC51(bfad, iocmd, payload_len);
		break;
	case IOCMD_IOC_RESET_STATS:
	case IOCMD_IOC_RESET_FWSTATS:
		rc = FUNC55(bfad, iocmd, cmd);
		break;
	case IOCMD_IOC_SET_ADAPTER_NAME:
	case IOCMD_IOC_SET_PORT_NAME:
		rc = FUNC56(bfad, iocmd, cmd);
		break;
	case IOCMD_IOCFC_GET_ATTR:
		rc = FUNC57(bfad, iocmd);
		break;
	case IOCMD_IOCFC_SET_INTR:
		rc = FUNC58(bfad, iocmd);
		break;
	case IOCMD_PORT_ENABLE:
		rc = FUNC83(bfad, iocmd);
		break;
	case IOCMD_PORT_DISABLE:
		rc = FUNC82(bfad, iocmd);
		break;
	case IOCMD_PORT_GET_ATTR:
		rc = FUNC84(bfad, iocmd);
		break;
	case IOCMD_PORT_GET_STATS:
		rc = FUNC86(bfad, iocmd, payload_len);
		break;
	case IOCMD_PORT_RESET_STATS:
		rc = FUNC87(bfad, iocmd);
		break;
	case IOCMD_PORT_CFG_TOPO:
	case IOCMD_PORT_CFG_SPEED:
	case IOCMD_PORT_CFG_ALPA:
	case IOCMD_PORT_CLR_ALPA:
		rc = FUNC102(bfad, iocmd, cmd);
		break;
	case IOCMD_PORT_CFG_MAXFRSZ:
		rc = FUNC80(bfad, iocmd);
		break;
	case IOCMD_PORT_BBCR_ENABLE:
	case IOCMD_PORT_BBCR_DISABLE:
		rc = FUNC79(bfad, cmd, iocmd);
		break;
	case IOCMD_PORT_BBCR_GET_ATTR:
		rc = FUNC85(bfad, iocmd);
		break;
	case IOCMD_LPORT_GET_ATTR:
		rc = FUNC64(bfad, iocmd);
		break;
	case IOCMD_LPORT_GET_STATS:
		rc = FUNC67(bfad, iocmd);
		break;
	case IOCMD_LPORT_RESET_STATS:
		rc = FUNC68(bfad, iocmd);
		break;
	case IOCMD_LPORT_GET_IOSTATS:
		rc = FUNC65(bfad, iocmd);
		break;
	case IOCMD_LPORT_GET_RPORTS:
		rc = FUNC66(bfad, iocmd, payload_len);
		break;
	case IOCMD_RPORT_GET_ATTR:
		rc = FUNC99(bfad, iocmd);
		break;
	case IOCMD_RPORT_GET_ADDR:
		rc = FUNC98(bfad, iocmd);
		break;
	case IOCMD_RPORT_GET_STATS:
		rc = FUNC100(bfad, iocmd);
		break;
	case IOCMD_RPORT_RESET_STATS:
		rc = FUNC97(bfad, iocmd);
		break;
	case IOCMD_RPORT_SET_SPEED:
		rc = FUNC101(bfad, iocmd);
		break;
	case IOCMD_VPORT_GET_ATTR:
		rc = FUNC112(bfad, iocmd);
		break;
	case IOCMD_VPORT_GET_STATS:
		rc = FUNC113(bfad, iocmd);
		break;
	case IOCMD_VPORT_RESET_STATS:
		rc = FUNC111(bfad, iocmd);
		break;
	case IOCMD_FABRIC_GET_LPORTS:
		rc = FUNC27(bfad, iocmd, payload_len);
		break;
	case IOCMD_RATELIM_ENABLE:
	case IOCMD_RATELIM_DISABLE:
		rc = FUNC95(bfad, cmd, iocmd);
		break;
	case IOCMD_RATELIM_DEF_SPEED:
		rc = FUNC96(bfad, cmd, iocmd);
		break;
	case IOCMD_FCPIM_FAILOVER:
		rc = FUNC7(bfad, iocmd);
		break;
	case IOCMD_FCPIM_MODSTATS:
		rc = FUNC32(bfad, iocmd);
		break;
	case IOCMD_FCPIM_MODSTATSCLR:
		rc = FUNC30(bfad, iocmd);
		break;
	case IOCMD_FCPIM_DEL_ITN_STATS:
		rc = FUNC31(bfad, iocmd);
		break;
	case IOCMD_ITNIM_GET_ATTR:
		rc = FUNC59(bfad, iocmd);
		break;
	case IOCMD_ITNIM_GET_IOSTATS:
		rc = FUNC61(bfad, iocmd);
		break;
	case IOCMD_ITNIM_RESET_STATS:
		rc = FUNC63(bfad, iocmd);
		break;
	case IOCMD_ITNIM_GET_ITNSTATS:
		rc = FUNC62(bfad, iocmd);
		break;
	case IOCMD_FCPORT_ENABLE:
		rc = FUNC37(bfad, iocmd);
		break;
	case IOCMD_FCPORT_DISABLE:
		rc = FUNC36(bfad, iocmd);
		break;
	case IOCMD_IOC_PCIFN_CFG:
		rc = FUNC53(bfad, iocmd);
		break;
	case IOCMD_IOC_FW_SIG_INV:
		rc = FUNC49(bfad, iocmd);
		break;
	case IOCMD_PCIFN_CREATE:
		rc = FUNC71(bfad, iocmd);
		break;
	case IOCMD_PCIFN_DELETE:
		rc = FUNC72(bfad, iocmd);
		break;
	case IOCMD_PCIFN_BW:
		rc = FUNC70(bfad, iocmd);
		break;
	case IOCMD_ADAPTER_CFG_MODE:
		rc = FUNC1(bfad, iocmd);
		break;
	case IOCMD_PORT_CFG_MODE:
		rc = FUNC81(bfad, iocmd);
		break;
	case IOCMD_FLASH_ENABLE_OPTROM:
	case IOCMD_FLASH_DISABLE_OPTROM:
		rc = FUNC0(bfad, cmd, iocmd);
		break;
	case IOCMD_FAA_QUERY:
		rc = FUNC26(bfad, iocmd);
		break;
	case IOCMD_CEE_GET_ATTR:
		rc = FUNC4(bfad, iocmd, payload_len);
		break;
	case IOCMD_CEE_GET_STATS:
		rc = FUNC5(bfad, iocmd, payload_len);
		break;
	case IOCMD_CEE_RESET_STATS:
		rc = FUNC6(bfad, iocmd);
		break;
	case IOCMD_SFP_MEDIA:
		rc = FUNC103(bfad, iocmd);
		 break;
	case IOCMD_SFP_SPEED:
		rc = FUNC104(bfad, iocmd);
		break;
	case IOCMD_FLASH_GET_ATTR:
		rc = FUNC41(bfad, iocmd);
		break;
	case IOCMD_FLASH_ERASE_PART:
		rc = FUNC40(bfad, iocmd);
		break;
	case IOCMD_FLASH_UPDATE_PART:
		rc = FUNC43(bfad, iocmd, payload_len);
		break;
	case IOCMD_FLASH_READ_PART:
		rc = FUNC42(bfad, iocmd, payload_len);
		break;
	case IOCMD_DIAG_TEMP:
		rc = FUNC23(bfad, iocmd);
		break;
	case IOCMD_DIAG_MEMTEST:
		rc = FUNC20(bfad, iocmd);
		break;
	case IOCMD_DIAG_LOOPBACK:
		rc = FUNC19(bfad, iocmd);
		break;
	case IOCMD_DIAG_FWPING:
		rc = FUNC16(bfad, iocmd);
		break;
	case IOCMD_DIAG_QUEUETEST:
		rc = FUNC21(bfad, iocmd);
		break;
	case IOCMD_DIAG_SFP:
		rc = FUNC22(bfad, iocmd);
		break;
	case IOCMD_DIAG_LED:
		rc = FUNC18(bfad, iocmd);
		break;
	case IOCMD_DIAG_BEACON_LPORT:
		rc = FUNC11(bfad, iocmd);
		break;
	case IOCMD_DIAG_LB_STAT:
		rc = FUNC17(bfad, iocmd);
		break;
	case IOCMD_DIAG_DPORT_ENABLE:
		rc = FUNC13(bfad, iocmd);
		break;
	case IOCMD_DIAG_DPORT_DISABLE:
		rc = FUNC12(bfad, iocmd);
		break;
	case IOCMD_DIAG_DPORT_SHOW:
		rc = FUNC14(bfad, iocmd);
		break;
	case IOCMD_DIAG_DPORT_START:
		rc = FUNC15(bfad, iocmd);
		break;
	case IOCMD_PHY_GET_ATTR:
		rc = FUNC73(bfad, iocmd);
		break;
	case IOCMD_PHY_GET_STATS:
		rc = FUNC74(bfad, iocmd);
		break;
	case IOCMD_PHY_UPDATE_FW:
		rc = FUNC76(bfad, iocmd, payload_len);
		break;
	case IOCMD_PHY_READ_FW:
		rc = FUNC75(bfad, iocmd, payload_len);
		break;
	case IOCMD_VHBA_QUERY:
		rc = FUNC110(bfad, iocmd);
		break;
	case IOCMD_DEBUG_PORTLOG:
		rc = FUNC78(bfad, iocmd);
		break;
	case IOCMD_DEBUG_FW_CORE:
		rc = FUNC10(bfad, iocmd, payload_len);
		break;
	case IOCMD_DEBUG_FW_STATE_CLR:
	case IOCMD_DEBUG_PORTLOG_CLR:
	case IOCMD_DEBUG_START_DTRC:
	case IOCMD_DEBUG_STOP_DTRC:
		rc = FUNC9(bfad, iocmd, cmd);
		break;
	case IOCMD_DEBUG_PORTLOG_CTL:
		rc = FUNC77(bfad, iocmd);
		break;
	case IOCMD_FCPIM_PROFILE_ON:
	case IOCMD_FCPIM_PROFILE_OFF:
		rc = FUNC29(bfad, iocmd, cmd);
		break;
	case IOCMD_ITNIM_GET_IOPROFILE:
		rc = FUNC60(bfad, iocmd);
		break;
	case IOCMD_FCPORT_GET_STATS:
		rc = FUNC38(bfad, iocmd);
		break;
	case IOCMD_FCPORT_RESET_STATS:
		rc = FUNC39(bfad, iocmd);
		break;
	case IOCMD_BOOT_CFG:
		rc = FUNC2(bfad, iocmd);
		break;
	case IOCMD_BOOT_QUERY:
		rc = FUNC3(bfad, iocmd);
		break;
	case IOCMD_PREBOOT_QUERY:
		rc = FUNC88(bfad, iocmd);
		break;
	case IOCMD_ETHBOOT_CFG:
		rc = FUNC24(bfad, iocmd);
		break;
	case IOCMD_ETHBOOT_QUERY:
		rc = FUNC25(bfad, iocmd);
		break;
	case IOCMD_TRUNK_ENABLE:
	case IOCMD_TRUNK_DISABLE:
		rc = FUNC8(bfad, iocmd, cmd);
		break;
	case IOCMD_TRUNK_GET_ATTR:
		rc = FUNC107(bfad, iocmd);
		break;
	case IOCMD_QOS_ENABLE:
	case IOCMD_QOS_DISABLE:
		rc = FUNC89(bfad, iocmd, cmd);
		break;
	case IOCMD_QOS_GET_ATTR:
		rc = FUNC90(bfad, iocmd);
		break;
	case IOCMD_QOS_GET_VC_ATTR:
		rc = FUNC92(bfad, iocmd);
		break;
	case IOCMD_QOS_GET_STATS:
		rc = FUNC91(bfad, iocmd);
		break;
	case IOCMD_QOS_RESET_STATS:
		rc = FUNC93(bfad, iocmd);
		break;
	case IOCMD_QOS_SET_BW:
		rc = FUNC94(bfad, iocmd);
		break;
	case IOCMD_VF_GET_STATS:
		rc = FUNC109(bfad, iocmd);
		break;
	case IOCMD_VF_RESET_STATS:
		rc = FUNC108(bfad, iocmd);
		break;
	case IOCMD_FCPIM_LUNMASK_ENABLE:
	case IOCMD_FCPIM_LUNMASK_DISABLE:
	case IOCMD_FCPIM_LUNMASK_CLEAR:
		rc = FUNC69(bfad, iocmd, cmd);
		break;
	case IOCMD_FCPIM_LUNMASK_QUERY:
		rc = FUNC33(bfad, iocmd);
		break;
	case IOCMD_FCPIM_LUNMASK_ADD:
	case IOCMD_FCPIM_LUNMASK_DELETE:
		rc = FUNC28(bfad, iocmd, cmd);
		break;
	case IOCMD_FCPIM_THROTTLE_QUERY:
		rc = FUNC34(bfad, iocmd);
		break;
	case IOCMD_FCPIM_THROTTLE_SET:
		rc = FUNC35(bfad, iocmd);
		break;
	/* TFRU */
	case IOCMD_TFRU_READ:
		rc = FUNC105(bfad, iocmd);
		break;
	case IOCMD_TFRU_WRITE:
		rc = FUNC106(bfad, iocmd);
		break;
	/* FRU */
	case IOCMD_FRUVPD_READ:
		rc = FUNC45(bfad, iocmd);
		break;
	case IOCMD_FRUVPD_UPDATE:
		rc = FUNC46(bfad, iocmd);
		break;
	case IOCMD_FRUVPD_GET_MAX_SIZE:
		rc = FUNC44(bfad, iocmd);
		break;
	default:
		rc = -EINVAL;
		break;
	}
	return rc;
}