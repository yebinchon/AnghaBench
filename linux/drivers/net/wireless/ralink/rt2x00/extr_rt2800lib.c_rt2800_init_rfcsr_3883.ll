; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3883.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3883.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RFCSR2_RESCAL_BP = common dso_local global i32 0, align 4
@RFCSR2_RESCAL_EN = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_3883 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_3883(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  store i32 5, i32* %4, align 4
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %5, i32 2)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %7, i32 0, i32 224)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %9, i32 1, i32 3)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 2, i32 80)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %13, i32 3, i32 32)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %15, i32 4, i32 0)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %17, i32 5, i32 0)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 6, i32 64)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %21, i32 7, i32 0)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %23, i32 8, i32 91)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 9, i32 8)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 10, i32 211)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %29, i32 11, i32 72)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %31, i32 12, i32 26)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 13, i32 18)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %35, i32 14, i32 0)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 15, i32 0)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 16, i32 0)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 18, i32 64)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %43, i32 19, i32 0)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 20, i32 0)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %47, i32 21, i32 0)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 22, i32 32)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %51, i32 23, i32 192)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %53, i32 24, i32 0)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %55, i32 25, i32 0)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %57, i32 26, i32 0)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %59, i32 27, i32 0)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %61, i32 28, i32 0)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %63, i32 29, i32 0)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %65, i32 30, i32 16)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %67, i32 31, i32 128)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %69, i32 32, i32 128)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %72 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %71, i32 33, i32 0)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %73, i32 34, i32 32)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %76 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %75, i32 35, i32 0)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %77, i32 36, i32 0)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %79, i32 37, i32 0)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %81, i32 38, i32 134)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %83, i32 39, i32 35)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %85, i32 40, i32 0)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %87, i32 41, i32 0)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %89, i32 42, i32 0)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %91, i32 43, i32 0)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %93, i32 44, i32 147)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %95, i32 45, i32 187)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %97, i32 46, i32 96)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %99, i32 47, i32 0)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %101, i32 48, i32 0)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %103, i32 49, i32 142)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %105, i32 50, i32 134)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %107, i32 51, i32 81)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %110 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %109, i32 52, i32 5)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %111, i32 53, i32 118)
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %114 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %113, i32 54, i32 118)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %115, i32 55, i32 118)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %118 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %117, i32 56, i32 219)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %120 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %119, i32 57, i32 62)
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %122 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %121, i32 58, i32 0)
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %123, i32 59, i32 0)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %126 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %125, i32 60, i32 0)
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %128 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %127, i32 61, i32 0)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %129, i32 62, i32 0)
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %131, i32 63, i32 0)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %133, i32 137, i32 15)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %136 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %135, i32 163, i32 157)
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %137, i32 105, i32 5)
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %140 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %139, i32 179, i32 2)
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %141, i32 180, i32 0)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %143, i32 182, i32 64)
  %145 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %146 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %145, i32 180, i32 1)
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %148 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %147, i32 182, i32 156)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %150 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %149, i32 179, i32 0)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %152 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %151, i32 142, i32 4)
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %154 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %153, i32 143, i32 59)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %155, i32 142, i32 6)
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %158 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %157, i32 143, i32 160)
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %160 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %159, i32 142, i32 7)
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %162 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %161, i32 143, i32 161)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %164 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %163, i32 142, i32 8)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %166 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %165, i32 143, i32 162)
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %168 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %167, i32 148, i32 200)
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %170 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %169, i32 32, i32 216)
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %172 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %171, i32 33, i32 50)
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %174 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %173, i32 2)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* @RFCSR2_RESCAL_BP, align 4
  %176 = call i32 @rt2x00_set_field8(i32* %3, i32 %175, i32 0)
  %177 = load i32, i32* @RFCSR2_RESCAL_EN, align 4
  %178 = call i32 @rt2x00_set_field8(i32* %3, i32 %177, i32 1)
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %179, i32 2, i32 %180)
  %182 = call i32 @msleep(i32 1)
  %183 = load i32, i32* @RFCSR2_RESCAL_EN, align 4
  %184 = call i32 @rt2x00_set_field8(i32* %3, i32 %183, i32 0)
  %185 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %185, i32 2, i32 %186)
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %189 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %188, i32 1)
  store i32 %189, i32* %3, align 4
  %190 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %191 = call i32 @rt2x00_set_field8(i32* %3, i32 %190, i32 1)
  %192 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %192, i32 1, i32 %193)
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %196 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %195, i32 6)
  store i32 %196, i32* %3, align 4
  %197 = load i32, i32* %3, align 4
  %198 = or i32 %197, 192
  store i32 %198, i32* %3, align 4
  %199 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %199, i32 6, i32 %200)
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %203 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %202, i32 22)
  store i32 %203, i32* %3, align 4
  %204 = load i32, i32* %3, align 4
  %205 = or i32 %204, 32
  store i32 %205, i32* %3, align 4
  %206 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %206, i32 22, i32 %207)
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %210 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %209, i32 46)
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = or i32 %211, 32
  store i32 %212, i32* %3, align 4
  %213 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %213, i32 46, i32 %214)
  %216 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %217 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %216, i32 20)
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* %3, align 4
  %219 = and i32 %218, -239
  store i32 %219, i32* %3, align 4
  %220 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %220, i32 20, i32 %221)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
