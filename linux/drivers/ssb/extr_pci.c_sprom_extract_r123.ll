; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_extract_r123.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_extract_r123.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@SSB_SPROM3_IL0MAC = common dso_local global i32 0, align 4
@SSB_SPROM1_IL0MAC = common dso_local global i32 0, align 4
@SSB_SPROM1_ET0MAC = common dso_local global i32 0, align 4
@SSB_SPROM1_ET1MAC = common dso_local global i32 0, align 4
@et0phyaddr = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET0A = common dso_local global i32 0, align 4
@et1phyaddr = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET1A = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET1A_SHIFT = common dso_local global i32 0, align 4
@et0mdcport = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET0M = common dso_local global i32 0, align 4
@et1mdcport = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET1M = common dso_local global i32 0, align 4
@board_rev = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_BREV = common dso_local global i32 0, align 4
@board_type = common dso_local global i32 0, align 4
@SSB_SPROM1_SPID = common dso_local global i32 0, align 4
@country_code = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_CCODE = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_CCODE_SHIFT = common dso_local global i32 0, align 4
@ant_available_a = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTA = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTA_SHIFT = common dso_local global i32 0, align 4
@ant_available_bg = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTBG = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTBG_SHIFT = common dso_local global i32 0, align 4
@pa0b0 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA0B0 = common dso_local global i32 0, align 4
@pa0b1 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA0B1 = common dso_local global i32 0, align 4
@pa0b2 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA0B2 = common dso_local global i32 0, align 4
@pa1b0 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA1B0 = common dso_local global i32 0, align 4
@pa1b1 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA1B1 = common dso_local global i32 0, align 4
@pa1b2 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA1B2 = common dso_local global i32 0, align 4
@gpio0 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA_P0 = common dso_local global i32 0, align 4
@gpio1 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA_P1 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA_P1_SHIFT = common dso_local global i32 0, align 4
@gpio2 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB_P2 = common dso_local global i32 0, align 4
@gpio3 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB_P3 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB_P3_SHIFT = common dso_local global i32 0, align 4
@maxpwr_a = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR_A = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR_A_SHIFT = common dso_local global i32 0, align 4
@maxpwr_bg = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR_BG = common dso_local global i32 0, align 4
@itssi_a = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI_A = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI_A_SHIFT = common dso_local global i32 0, align 4
@itssi_bg = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI_BG = common dso_local global i32 0, align 4
@boardflags_lo = common dso_local global i32 0, align 4
@SSB_SPROM1_BFLLO = common dso_local global i32 0, align 4
@alpha2 = common dso_local global i32* null, align 8
@SSB_SPROM1_CCODE = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_BG = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_BG_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_A = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_A_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i32*)* @sprom_extract_r123 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprom_extract_r123(%struct.ssb_sprom* %0, i32* %1) #0 {
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %7 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @SSB_SPROM3_IL0MAC, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @SSB_SPROM1_IL0MAC, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SSB_SPROM1_ET0MAC, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @SSB_SPROM1_ET1MAC, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %13, %10
  %21 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %22 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @SPOFF(i32 %26)
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @sprom_get_mac(i32 %23, i32* %28)
  %30 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %31 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %53

34:                                               ; preds = %20
  %35 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %36 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @SPOFF(i32 %40)
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = call i32 @sprom_get_mac(i32 %37, i32* %42)
  %44 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %45 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @SPOFF(i32 %49)
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i32 @sprom_get_mac(i32 %46, i32* %51)
  br label %53

53:                                               ; preds = %34, %20
  %54 = load i32, i32* @et0phyaddr, align 4
  %55 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %56 = load i32, i32* @SSB_SPROM1_ETHPHY_ET0A, align 4
  %57 = call i32 @SPEX(i32 %54, i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* @et1phyaddr, align 4
  %59 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %60 = load i32, i32* @SSB_SPROM1_ETHPHY_ET1A, align 4
  %61 = load i32, i32* @SSB_SPROM1_ETHPHY_ET1A_SHIFT, align 4
  %62 = call i32 @SPEX(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @et0mdcport, align 4
  %64 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %65 = load i32, i32* @SSB_SPROM1_ETHPHY_ET0M, align 4
  %66 = call i32 @SPEX(i32 %63, i32 %64, i32 %65, i32 14)
  %67 = load i32, i32* @et1mdcport, align 4
  %68 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %69 = load i32, i32* @SSB_SPROM1_ETHPHY_ET1M, align 4
  %70 = call i32 @SPEX(i32 %67, i32 %68, i32 %69, i32 15)
  %71 = load i32, i32* @board_rev, align 4
  %72 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %73 = load i32, i32* @SSB_SPROM1_BINF_BREV, align 4
  %74 = call i32 @SPEX(i32 %71, i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* @board_type, align 4
  %76 = load i32, i32* @SSB_SPROM1_SPID, align 4
  %77 = call i32 @SPEX(i32 %75, i32 %76, i32 65535, i32 0)
  %78 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %79 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %53
  %83 = load i32, i32* @country_code, align 4
  %84 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %85 = load i32, i32* @SSB_SPROM1_BINF_CCODE, align 4
  %86 = load i32, i32* @SSB_SPROM1_BINF_CCODE_SHIFT, align 4
  %87 = call i32 @SPEX(i32 %83, i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %53
  %89 = load i32, i32* @ant_available_a, align 4
  %90 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %91 = load i32, i32* @SSB_SPROM1_BINF_ANTA, align 4
  %92 = load i32, i32* @SSB_SPROM1_BINF_ANTA_SHIFT, align 4
  %93 = call i32 @SPEX(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @ant_available_bg, align 4
  %95 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %96 = load i32, i32* @SSB_SPROM1_BINF_ANTBG, align 4
  %97 = load i32, i32* @SSB_SPROM1_BINF_ANTBG_SHIFT, align 4
  %98 = call i32 @SPEX(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @pa0b0, align 4
  %100 = load i32, i32* @SSB_SPROM1_PA0B0, align 4
  %101 = call i32 @SPEX(i32 %99, i32 %100, i32 65535, i32 0)
  %102 = load i32, i32* @pa0b1, align 4
  %103 = load i32, i32* @SSB_SPROM1_PA0B1, align 4
  %104 = call i32 @SPEX(i32 %102, i32 %103, i32 65535, i32 0)
  %105 = load i32, i32* @pa0b2, align 4
  %106 = load i32, i32* @SSB_SPROM1_PA0B2, align 4
  %107 = call i32 @SPEX(i32 %105, i32 %106, i32 65535, i32 0)
  %108 = load i32, i32* @pa1b0, align 4
  %109 = load i32, i32* @SSB_SPROM1_PA1B0, align 4
  %110 = call i32 @SPEX(i32 %108, i32 %109, i32 65535, i32 0)
  %111 = load i32, i32* @pa1b1, align 4
  %112 = load i32, i32* @SSB_SPROM1_PA1B1, align 4
  %113 = call i32 @SPEX(i32 %111, i32 %112, i32 65535, i32 0)
  %114 = load i32, i32* @pa1b2, align 4
  %115 = load i32, i32* @SSB_SPROM1_PA1B2, align 4
  %116 = call i32 @SPEX(i32 %114, i32 %115, i32 65535, i32 0)
  %117 = load i32, i32* @gpio0, align 4
  %118 = load i32, i32* @SSB_SPROM1_GPIOA, align 4
  %119 = load i32, i32* @SSB_SPROM1_GPIOA_P0, align 4
  %120 = call i32 @SPEX(i32 %117, i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* @gpio1, align 4
  %122 = load i32, i32* @SSB_SPROM1_GPIOA, align 4
  %123 = load i32, i32* @SSB_SPROM1_GPIOA_P1, align 4
  %124 = load i32, i32* @SSB_SPROM1_GPIOA_P1_SHIFT, align 4
  %125 = call i32 @SPEX(i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @gpio2, align 4
  %127 = load i32, i32* @SSB_SPROM1_GPIOB, align 4
  %128 = load i32, i32* @SSB_SPROM1_GPIOB_P2, align 4
  %129 = call i32 @SPEX(i32 %126, i32 %127, i32 %128, i32 0)
  %130 = load i32, i32* @gpio3, align 4
  %131 = load i32, i32* @SSB_SPROM1_GPIOB, align 4
  %132 = load i32, i32* @SSB_SPROM1_GPIOB_P3, align 4
  %133 = load i32, i32* @SSB_SPROM1_GPIOB_P3_SHIFT, align 4
  %134 = call i32 @SPEX(i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* @maxpwr_a, align 4
  %136 = load i32, i32* @SSB_SPROM1_MAXPWR, align 4
  %137 = load i32, i32* @SSB_SPROM1_MAXPWR_A, align 4
  %138 = load i32, i32* @SSB_SPROM1_MAXPWR_A_SHIFT, align 4
  %139 = call i32 @SPEX(i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* @maxpwr_bg, align 4
  %141 = load i32, i32* @SSB_SPROM1_MAXPWR, align 4
  %142 = load i32, i32* @SSB_SPROM1_MAXPWR_BG, align 4
  %143 = call i32 @SPEX(i32 %140, i32 %141, i32 %142, i32 0)
  %144 = load i32, i32* @itssi_a, align 4
  %145 = load i32, i32* @SSB_SPROM1_ITSSI, align 4
  %146 = load i32, i32* @SSB_SPROM1_ITSSI_A, align 4
  %147 = load i32, i32* @SSB_SPROM1_ITSSI_A_SHIFT, align 4
  %148 = call i32 @SPEX(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* @itssi_bg, align 4
  %150 = load i32, i32* @SSB_SPROM1_ITSSI, align 4
  %151 = load i32, i32* @SSB_SPROM1_ITSSI_BG, align 4
  %152 = call i32 @SPEX(i32 %149, i32 %150, i32 %151, i32 0)
  %153 = load i32, i32* @boardflags_lo, align 4
  %154 = load i32, i32* @SSB_SPROM1_BFLLO, align 4
  %155 = call i32 @SPEX(i32 %153, i32 %154, i32 65535, i32 0)
  %156 = load i32*, i32** @alpha2, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SSB_SPROM1_CCODE, align 4
  %160 = call i32 @SPEX(i32 %158, i32 %159, i32 65280, i32 8)
  %161 = load i32*, i32** @alpha2, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SSB_SPROM1_CCODE, align 4
  %165 = call i32 @SPEX(i32 %163, i32 %164, i32 255, i32 0)
  %166 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %167 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* @SSB_SPROM1_AGAIN, align 4
  %171 = load i32, i32* @SSB_SPROM1_AGAIN_BG, align 4
  %172 = load i32, i32* @SSB_SPROM1_AGAIN_BG_SHIFT, align 4
  %173 = call i8* @sprom_extract_antgain(i32 %168, i32* %169, i32 %170, i32 %171, i32 %172)
  %174 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %175 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  store i8* %173, i8** %176, align 8
  %177 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %178 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* @SSB_SPROM1_AGAIN, align 4
  %182 = load i32, i32* @SSB_SPROM1_AGAIN_A, align 4
  %183 = load i32, i32* @SSB_SPROM1_AGAIN_A_SHIFT, align 4
  %184 = call i8* @sprom_extract_antgain(i32 %179, i32* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %186 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 8
  %188 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %189 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %190, 2
  br i1 %191, label %192, label %196

192:                                              ; preds = %88
  %193 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @sprom_extract_r23(%struct.ssb_sprom* %193, i32* %194)
  br label %196

196:                                              ; preds = %192, %88
  ret void
}

declare dso_local i32 @sprom_get_mac(i32, i32*) #1

declare dso_local i64 @SPOFF(i32) #1

declare dso_local i32 @SPEX(i32, i32, i32, i32) #1

declare dso_local i8* @sprom_extract_antgain(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sprom_extract_r23(%struct.ssb_sprom*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
