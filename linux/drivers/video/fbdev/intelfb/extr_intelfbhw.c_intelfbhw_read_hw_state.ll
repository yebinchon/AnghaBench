; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_read_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_read_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32 }
%struct.intelfb_hwstate = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@VGA0_DIVISOR = common dso_local global i64 0, align 8
@VGA1_DIVISOR = common dso_local global i64 0, align 8
@VGAPD = common dso_local global i64 0, align 8
@DPLL_A = common dso_local global i64 0, align 8
@DPLL_B = common dso_local global i64 0, align 8
@FPA0 = common dso_local global i64 0, align 8
@FPA1 = common dso_local global i64 0, align 8
@FPB0 = common dso_local global i64 0, align 8
@FPB1 = common dso_local global i64 0, align 8
@HTOTAL_A = common dso_local global i64 0, align 8
@HBLANK_A = common dso_local global i64 0, align 8
@HSYNC_A = common dso_local global i64 0, align 8
@VTOTAL_A = common dso_local global i64 0, align 8
@VBLANK_A = common dso_local global i64 0, align 8
@VSYNC_A = common dso_local global i64 0, align 8
@SRC_SIZE_A = common dso_local global i64 0, align 8
@BCLRPAT_A = common dso_local global i64 0, align 8
@HTOTAL_B = common dso_local global i64 0, align 8
@HBLANK_B = common dso_local global i64 0, align 8
@HSYNC_B = common dso_local global i64 0, align 8
@VTOTAL_B = common dso_local global i64 0, align 8
@VBLANK_B = common dso_local global i64 0, align 8
@VSYNC_B = common dso_local global i64 0, align 8
@SRC_SIZE_B = common dso_local global i64 0, align 8
@BCLRPAT_B = common dso_local global i64 0, align 8
@ADPA = common dso_local global i64 0, align 8
@DVOA = common dso_local global i64 0, align 8
@DVOB = common dso_local global i64 0, align 8
@DVOC = common dso_local global i64 0, align 8
@DVOA_SRCDIM = common dso_local global i64 0, align 8
@DVOB_SRCDIM = common dso_local global i64 0, align 8
@DVOC_SRCDIM = common dso_local global i64 0, align 8
@LVDS = common dso_local global i64 0, align 8
@PIPEACONF = common dso_local global i64 0, align 8
@PIPEBCONF = common dso_local global i64 0, align 8
@DISPARB = common dso_local global i64 0, align 8
@CURSOR_A_CONTROL = common dso_local global i64 0, align 8
@CURSOR_B_CONTROL = common dso_local global i64 0, align 8
@CURSOR_A_BASEADDR = common dso_local global i64 0, align 8
@CURSOR_B_BASEADDR = common dso_local global i64 0, align 8
@CURSOR_A_PALETTE0 = common dso_local global i64 0, align 8
@CURSOR_B_PALETTE0 = common dso_local global i64 0, align 8
@CURSOR_SIZE = common dso_local global i64 0, align 8
@DSPACNTR = common dso_local global i64 0, align 8
@DSPBCNTR = common dso_local global i64 0, align 8
@DSPABASE = common dso_local global i64 0, align 8
@DSPBBASE = common dso_local global i64 0, align 8
@DSPASTRIDE = common dso_local global i64 0, align 8
@DSPBSTRIDE = common dso_local global i64 0, align 8
@VGACNTRL = common dso_local global i64 0, align 8
@ADD_ID = common dso_local global i64 0, align 8
@SWF00 = common dso_local global i64 0, align 8
@SWF10 = common dso_local global i64 0, align 8
@SWF30 = common dso_local global i64 0, align 8
@FENCE = common dso_local global i64 0, align 8
@INSTPM = common dso_local global i64 0, align 8
@MEM_MODE = common dso_local global i64 0, align 8
@FW_BLC_0 = common dso_local global i64 0, align 8
@FW_BLC_1 = common dso_local global i64 0, align 8
@HWSTAM = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@IIR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@PALETTE_8_ENTRIES = common dso_local global i32 0, align 4
@PALETTE_A = common dso_local global i64 0, align 8
@PALETTE_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_read_hw_state(%struct.intelfb_info* %0, %struct.intelfb_hwstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intelfb_info*, align 8
  %6 = alloca %struct.intelfb_hwstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %5, align 8
  store %struct.intelfb_hwstate* %1, %struct.intelfb_hwstate** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %10 = icmp ne %struct.intelfb_hwstate* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %13 = icmp ne %struct.intelfb_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %399

15:                                               ; preds = %11
  %16 = load i64, i64* @VGA0_DIVISOR, align 8
  %17 = call i8* @INREG(i64 %16)
  %18 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %19 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %18, i32 0, i32 64
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @VGA1_DIVISOR, align 8
  %21 = call i8* @INREG(i64 %20)
  %22 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %23 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %22, i32 0, i32 63
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* @VGAPD, align 8
  %25 = call i8* @INREG(i64 %24)
  %26 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %27 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %26, i32 0, i32 62
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* @DPLL_A, align 8
  %29 = call i8* @INREG(i64 %28)
  %30 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %31 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %30, i32 0, i32 61
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* @DPLL_B, align 8
  %33 = call i8* @INREG(i64 %32)
  %34 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %35 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %34, i32 0, i32 60
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @FPA0, align 8
  %37 = call i8* @INREG(i64 %36)
  %38 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %39 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %38, i32 0, i32 59
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @FPA1, align 8
  %41 = call i8* @INREG(i64 %40)
  %42 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %43 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %42, i32 0, i32 58
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @FPB0, align 8
  %45 = call i8* @INREG(i64 %44)
  %46 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %47 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %46, i32 0, i32 57
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @FPB1, align 8
  %49 = call i8* @INREG(i64 %48)
  %50 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %51 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %50, i32 0, i32 56
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %15
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %4, align 4
  br label %399

56:                                               ; preds = %15
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %4, align 4
  br label %399

61:                                               ; preds = %56
  %62 = load i64, i64* @HTOTAL_A, align 8
  %63 = call i8* @INREG(i64 %62)
  %64 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %65 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %64, i32 0, i32 53
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* @HBLANK_A, align 8
  %67 = call i8* @INREG(i64 %66)
  %68 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %69 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %68, i32 0, i32 52
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @HSYNC_A, align 8
  %71 = call i8* @INREG(i64 %70)
  %72 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %73 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %72, i32 0, i32 51
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* @VTOTAL_A, align 8
  %75 = call i8* @INREG(i64 %74)
  %76 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %77 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %76, i32 0, i32 50
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* @VBLANK_A, align 8
  %79 = call i8* @INREG(i64 %78)
  %80 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %81 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %80, i32 0, i32 49
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @VSYNC_A, align 8
  %83 = call i8* @INREG(i64 %82)
  %84 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %85 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %84, i32 0, i32 48
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* @SRC_SIZE_A, align 8
  %87 = call i8* @INREG(i64 %86)
  %88 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %89 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %88, i32 0, i32 47
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* @BCLRPAT_A, align 8
  %91 = call i8* @INREG(i64 %90)
  %92 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %93 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %92, i32 0, i32 46
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* @HTOTAL_B, align 8
  %95 = call i8* @INREG(i64 %94)
  %96 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %97 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %96, i32 0, i32 45
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* @HBLANK_B, align 8
  %99 = call i8* @INREG(i64 %98)
  %100 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %101 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %100, i32 0, i32 44
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* @HSYNC_B, align 8
  %103 = call i8* @INREG(i64 %102)
  %104 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %105 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %104, i32 0, i32 43
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @VTOTAL_B, align 8
  %107 = call i8* @INREG(i64 %106)
  %108 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %109 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %108, i32 0, i32 42
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* @VBLANK_B, align 8
  %111 = call i8* @INREG(i64 %110)
  %112 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %113 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %112, i32 0, i32 41
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* @VSYNC_B, align 8
  %115 = call i8* @INREG(i64 %114)
  %116 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %117 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %116, i32 0, i32 40
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* @SRC_SIZE_B, align 8
  %119 = call i8* @INREG(i64 %118)
  %120 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %121 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %120, i32 0, i32 39
  store i8* %119, i8** %121, align 8
  %122 = load i64, i64* @BCLRPAT_B, align 8
  %123 = call i8* @INREG(i64 %122)
  %124 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %125 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %124, i32 0, i32 38
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %130

128:                                              ; preds = %61
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %4, align 4
  br label %399

130:                                              ; preds = %61
  %131 = load i64, i64* @ADPA, align 8
  %132 = call i8* @INREG(i64 %131)
  %133 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %134 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %133, i32 0, i32 37
  store i8* %132, i8** %134, align 8
  %135 = load i64, i64* @DVOA, align 8
  %136 = call i8* @INREG(i64 %135)
  %137 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %138 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %137, i32 0, i32 36
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* @DVOB, align 8
  %140 = call i8* @INREG(i64 %139)
  %141 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %142 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %141, i32 0, i32 35
  store i8* %140, i8** %142, align 8
  %143 = load i64, i64* @DVOC, align 8
  %144 = call i8* @INREG(i64 %143)
  %145 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %146 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %145, i32 0, i32 34
  store i8* %144, i8** %146, align 8
  %147 = load i64, i64* @DVOA_SRCDIM, align 8
  %148 = call i8* @INREG(i64 %147)
  %149 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %150 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %149, i32 0, i32 33
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* @DVOB_SRCDIM, align 8
  %152 = call i8* @INREG(i64 %151)
  %153 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %154 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %153, i32 0, i32 32
  store i8* %152, i8** %154, align 8
  %155 = load i64, i64* @DVOC_SRCDIM, align 8
  %156 = call i8* @INREG(i64 %155)
  %157 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %158 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %157, i32 0, i32 31
  store i8* %156, i8** %158, align 8
  %159 = load i64, i64* @LVDS, align 8
  %160 = call i8* @INREG(i64 %159)
  %161 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %162 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %161, i32 0, i32 30
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* %7, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %167

165:                                              ; preds = %130
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %4, align 4
  br label %399

167:                                              ; preds = %130
  %168 = load i64, i64* @PIPEACONF, align 8
  %169 = call i8* @INREG(i64 %168)
  %170 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %171 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %170, i32 0, i32 29
  store i8* %169, i8** %171, align 8
  %172 = load i64, i64* @PIPEBCONF, align 8
  %173 = call i8* @INREG(i64 %172)
  %174 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %175 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %174, i32 0, i32 28
  store i8* %173, i8** %175, align 8
  %176 = load i64, i64* @DISPARB, align 8
  %177 = call i8* @INREG(i64 %176)
  %178 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %179 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %178, i32 0, i32 27
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = icmp eq i32 %180, 5
  br i1 %181, label %182, label %184

182:                                              ; preds = %167
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %4, align 4
  br label %399

184:                                              ; preds = %167
  %185 = load i64, i64* @CURSOR_A_CONTROL, align 8
  %186 = call i8* @INREG(i64 %185)
  %187 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %188 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %187, i32 0, i32 26
  store i8* %186, i8** %188, align 8
  %189 = load i64, i64* @CURSOR_B_CONTROL, align 8
  %190 = call i8* @INREG(i64 %189)
  %191 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %192 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %191, i32 0, i32 25
  store i8* %190, i8** %192, align 8
  %193 = load i64, i64* @CURSOR_A_BASEADDR, align 8
  %194 = call i8* @INREG(i64 %193)
  %195 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %196 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %195, i32 0, i32 24
  store i8* %194, i8** %196, align 8
  %197 = load i64, i64* @CURSOR_B_BASEADDR, align 8
  %198 = call i8* @INREG(i64 %197)
  %199 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %200 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %199, i32 0, i32 23
  store i8* %198, i8** %200, align 8
  %201 = load i32, i32* %7, align 4
  %202 = icmp eq i32 %201, 6
  br i1 %202, label %203, label %205

203:                                              ; preds = %184
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %4, align 4
  br label %399

205:                                              ; preds = %184
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %234, %205
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 4
  br i1 %208, label %209, label %237

209:                                              ; preds = %206
  %210 = load i64, i64* @CURSOR_A_PALETTE0, align 8
  %211 = load i32, i32* %8, align 4
  %212 = shl i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %210, %213
  %215 = call i8* @INREG(i64 %214)
  %216 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %217 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %216, i32 0, i32 22
  %218 = load i8**, i8*** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* %215, i8** %221, align 8
  %222 = load i64, i64* @CURSOR_B_PALETTE0, align 8
  %223 = load i32, i32* %8, align 4
  %224 = shl i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %222, %225
  %227 = call i8* @INREG(i64 %226)
  %228 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %229 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %228, i32 0, i32 21
  %230 = load i8**, i8*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  store i8* %227, i8** %233, align 8
  br label %234

234:                                              ; preds = %209
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %206

237:                                              ; preds = %206
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 7
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %4, align 4
  br label %399

242:                                              ; preds = %237
  %243 = load i64, i64* @CURSOR_SIZE, align 8
  %244 = call i8* @INREG(i64 %243)
  %245 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %246 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %245, i32 0, i32 20
  store i8* %244, i8** %246, align 8
  %247 = load i32, i32* %7, align 4
  %248 = icmp eq i32 %247, 8
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* %7, align 4
  store i32 %250, i32* %4, align 4
  br label %399

251:                                              ; preds = %242
  %252 = load i64, i64* @DSPACNTR, align 8
  %253 = call i8* @INREG(i64 %252)
  %254 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %255 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %254, i32 0, i32 19
  store i8* %253, i8** %255, align 8
  %256 = load i64, i64* @DSPBCNTR, align 8
  %257 = call i8* @INREG(i64 %256)
  %258 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %259 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %258, i32 0, i32 18
  store i8* %257, i8** %259, align 8
  %260 = load i64, i64* @DSPABASE, align 8
  %261 = call i8* @INREG(i64 %260)
  %262 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %263 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %262, i32 0, i32 17
  store i8* %261, i8** %263, align 8
  %264 = load i64, i64* @DSPBBASE, align 8
  %265 = call i8* @INREG(i64 %264)
  %266 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %267 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %266, i32 0, i32 16
  store i8* %265, i8** %267, align 8
  %268 = load i64, i64* @DSPASTRIDE, align 8
  %269 = call i8* @INREG(i64 %268)
  %270 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %271 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %270, i32 0, i32 15
  store i8* %269, i8** %271, align 8
  %272 = load i64, i64* @DSPBSTRIDE, align 8
  %273 = call i8* @INREG(i64 %272)
  %274 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %275 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %274, i32 0, i32 14
  store i8* %273, i8** %275, align 8
  %276 = load i32, i32* %7, align 4
  %277 = icmp eq i32 %276, 9
  br i1 %277, label %278, label %280

278:                                              ; preds = %251
  %279 = load i32, i32* %7, align 4
  store i32 %279, i32* %4, align 4
  br label %399

280:                                              ; preds = %251
  %281 = load i64, i64* @VGACNTRL, align 8
  %282 = call i8* @INREG(i64 %281)
  %283 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %284 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %283, i32 0, i32 13
  store i8* %282, i8** %284, align 8
  %285 = load i32, i32* %7, align 4
  %286 = icmp eq i32 %285, 10
  br i1 %286, label %287, label %289

287:                                              ; preds = %280
  %288 = load i32, i32* %7, align 4
  store i32 %288, i32* %4, align 4
  br label %399

289:                                              ; preds = %280
  %290 = load i64, i64* @ADD_ID, align 8
  %291 = call i8* @INREG(i64 %290)
  %292 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %293 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %292, i32 0, i32 12
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* %7, align 4
  %295 = icmp eq i32 %294, 11
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i32, i32* %7, align 4
  store i32 %297, i32* %4, align 4
  br label %399

298:                                              ; preds = %289
  store i32 0, i32* %8, align 4
  br label %299

299:                                              ; preds = %343, %298
  %300 = load i32, i32* %8, align 4
  %301 = icmp slt i32 %300, 7
  br i1 %301, label %302, label %346

302:                                              ; preds = %299
  %303 = load i64, i64* @SWF00, align 8
  %304 = load i32, i32* %8, align 4
  %305 = shl i32 %304, 2
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %303, %306
  %308 = call i8* @INREG(i64 %307)
  %309 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %310 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %309, i32 0, i32 11
  %311 = load i8**, i8*** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %311, i64 %313
  store i8* %308, i8** %314, align 8
  %315 = load i64, i64* @SWF10, align 8
  %316 = load i32, i32* %8, align 4
  %317 = shl i32 %316, 2
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %315, %318
  %320 = call i8* @INREG(i64 %319)
  %321 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %322 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %321, i32 0, i32 10
  %323 = load i8**, i8*** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  store i8* %320, i8** %326, align 8
  %327 = load i32, i32* %8, align 4
  %328 = icmp slt i32 %327, 3
  br i1 %328, label %329, label %342

329:                                              ; preds = %302
  %330 = load i64, i64* @SWF30, align 8
  %331 = load i32, i32* %8, align 4
  %332 = shl i32 %331, 2
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %330, %333
  %335 = call i8* @INREG(i64 %334)
  %336 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %337 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %336, i32 0, i32 9
  %338 = load i8**, i8*** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  store i8* %335, i8** %341, align 8
  br label %342

342:                                              ; preds = %329, %302
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %8, align 4
  br label %299

346:                                              ; preds = %299
  store i32 0, i32* %8, align 4
  br label %347

347:                                              ; preds = %363, %346
  %348 = load i32, i32* %8, align 4
  %349 = icmp slt i32 %348, 8
  br i1 %349, label %350, label %366

350:                                              ; preds = %347
  %351 = load i64, i64* @FENCE, align 8
  %352 = load i32, i32* %8, align 4
  %353 = shl i32 %352, 2
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %351, %354
  %356 = call i8* @INREG(i64 %355)
  %357 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %358 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %357, i32 0, i32 8
  %359 = load i8**, i8*** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8*, i8** %359, i64 %361
  store i8* %356, i8** %362, align 8
  br label %363

363:                                              ; preds = %350
  %364 = load i32, i32* %8, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %8, align 4
  br label %347

366:                                              ; preds = %347
  %367 = load i64, i64* @INSTPM, align 8
  %368 = call i8* @INREG(i64 %367)
  %369 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %370 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %369, i32 0, i32 7
  store i8* %368, i8** %370, align 8
  %371 = load i64, i64* @MEM_MODE, align 8
  %372 = call i8* @INREG(i64 %371)
  %373 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %374 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %373, i32 0, i32 6
  store i8* %372, i8** %374, align 8
  %375 = load i64, i64* @FW_BLC_0, align 8
  %376 = call i8* @INREG(i64 %375)
  %377 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %378 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %377, i32 0, i32 5
  store i8* %376, i8** %378, align 8
  %379 = load i64, i64* @FW_BLC_1, align 8
  %380 = call i8* @INREG(i64 %379)
  %381 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %382 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %381, i32 0, i32 4
  store i8* %380, i8** %382, align 8
  %383 = load i32, i32* @HWSTAM, align 4
  %384 = call i8* @INREG16(i32 %383)
  %385 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %386 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %385, i32 0, i32 3
  store i8* %384, i8** %386, align 8
  %387 = load i32, i32* @IER, align 4
  %388 = call i8* @INREG16(i32 %387)
  %389 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %390 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %389, i32 0, i32 2
  store i8* %388, i8** %390, align 8
  %391 = load i32, i32* @IIR, align 4
  %392 = call i8* @INREG16(i32 %391)
  %393 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %394 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %393, i32 0, i32 1
  store i8* %392, i8** %394, align 8
  %395 = load i32, i32* @IMR, align 4
  %396 = call i8* @INREG16(i32 %395)
  %397 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %398 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %397, i32 0, i32 0
  store i8* %396, i8** %398, align 8
  store i32 0, i32* %4, align 4
  br label %399

399:                                              ; preds = %366, %296, %287, %278, %249, %240, %203, %182, %165, %128, %59, %54, %14
  %400 = load i32, i32* %4, align 4
  ret i32 %400
}

declare dso_local i8* @INREG(i64) #1

declare dso_local i8* @INREG16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
