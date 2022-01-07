; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_init_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_init_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@DEFAULT_SINGLE = common dso_local global i32 0, align 4
@auto_delink_en = common dso_local global i32 0, align 4
@ss_en = common dso_local global i32 0, align 4
@ss_interval = common dso_local global i32 0, align 4
@aspm_l0s_l1_en = common dso_local global i32 0, align 4
@CLK_200 = common dso_local global i32 0, align 4
@CLK_100 = common dso_local global i8* null, align 8
@CLK_80 = common dso_local global i8* null, align 8
@CLK_40 = common dso_local global i32 0, align 4
@SSC_DEPTH_2M = common dso_local global i8* null, align 8
@SSC_DEPTH_1M = common dso_local global i8* null, align 8
@SSC_DEPTH_512K = common dso_local global i8* null, align 8
@SD_PUSH_POINT_AUTO = common dso_local global i32 0, align 4
@SD_SAMPLE_POINT_AUTO = common dso_local global i32 0, align 4
@SUPPORT_MMC_DDR_MODE = common dso_local global i32 0, align 4
@msi_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_init_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_init_options(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %3, i32 0, i32 80
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 82
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 80
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %20 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %19, i32 0, i32 81
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %22 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %24 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %23, i32 0, i32 79
  store i64 0, i64* %24, align 8
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %26 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %29, i32 0, i32 77
  store i64 0, i64* %30, align 8
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 76
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @DEFAULT_SINGLE, align 4
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %35 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %34, i32 0, i32 75
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @auto_delink_en, align 4
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %37, i32 0, i32 74
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ss_en, align 4
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %41 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %40, i32 0, i32 73
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ss_interval, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 72
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @aspm_l0s_l1_en, align 4
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %50 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %49, i32 0, i32 71
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %52 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %51, i32 0, i32 4
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @CLK_200, align 4
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 70
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @CLK_100, align 8
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %58 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %57, i32 0, i32 69
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @CLK_100, align 8
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %61 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %60, i32 0, i32 68
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @CLK_100, align 8
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %64 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %63, i32 0, i32 67
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @CLK_80, align 8
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %67 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %66, i32 0, i32 66
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @CLK_80, align 8
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 65
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @CLK_80, align 8
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %73 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %72, i32 0, i32 64
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @CLK_40, align 4
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %76 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %75, i32 0, i32 63
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %78 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %77, i32 0, i32 5
  store i32 203, i32* %78, align 4
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %80 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %79, i32 0, i32 6
  store i32 98, i32* %80, align 8
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %82 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %81, i32 0, i32 7
  store i32 98, i32* %82, align 4
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %84 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %83, i32 0, i32 8
  store i32 98, i32* %84, align 8
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %86 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %85, i32 0, i32 9
  store i32 98, i32* %86, align 4
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %88 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %87, i32 0, i32 10
  store i32 117, i32* %88, align 8
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %90 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %89, i32 0, i32 11
  store i32 78, i32* %90, align 4
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %92 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %91, i32 0, i32 12
  store i32 39, i32* %92, align 8
  %93 = load i8*, i8** @SSC_DEPTH_2M, align 8
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %95 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %94, i32 0, i32 62
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @SSC_DEPTH_2M, align 8
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %98 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %97, i32 0, i32 61
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @SSC_DEPTH_1M, align 8
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %101 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %100, i32 0, i32 60
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @SSC_DEPTH_1M, align 8
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %104 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %103, i32 0, i32 59
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @SSC_DEPTH_1M, align 8
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %107 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %106, i32 0, i32 58
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @SSC_DEPTH_1M, align 8
  %109 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %110 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %109, i32 0, i32 57
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @SSC_DEPTH_512K, align 8
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %113 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %112, i32 0, i32 56
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @SSC_DEPTH_512K, align 8
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %116 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %115, i32 0, i32 55
  store i8* %114, i8** %116, align 8
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %118 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %117, i32 0, i32 13
  store i32 1, i32* %118, align 4
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %120 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %119, i32 0, i32 14
  store i32 17039875, i32* %120, align 8
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %122 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %121, i32 0, i32 15
  store i32 66051, i32* %122, align 4
  %123 = load i32, i32* @SD_PUSH_POINT_AUTO, align 4
  %124 = load i32, i32* @SD_SAMPLE_POINT_AUTO, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @SUPPORT_MMC_DDR_MODE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %129 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %128, i32 0, i32 16
  store i32 %127, i32* %129, align 8
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %131 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %130, i32 0, i32 54
  store i64 0, i64* %131, align 8
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %133 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %132, i32 0, i32 17
  store i32 1, i32* %133, align 4
  %134 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %135 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %134, i32 0, i32 18
  store i32 15, i32* %135, align 8
  %136 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %137 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %136, i32 0, i32 19
  store i32 15, i32* %137, align 4
  %138 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %139 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %138, i32 0, i32 20
  store i32 200, i32* %139, align 8
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %141 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %140, i32 0, i32 21
  store i32 1000, i32* %141, align 4
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %143 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %142, i32 0, i32 22
  store i32 3, i32* %143, align 8
  %144 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %145 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %144, i32 0, i32 23
  store i32 1, i32* %145, align 4
  %146 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %147 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %146, i32 0, i32 24
  store i32 5, i32* %147, align 8
  %148 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %149 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %148, i32 0, i32 25
  store i32 2, i32* %149, align 4
  %150 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %151 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %150, i32 0, i32 26
  store i32 85, i32* %151, align 8
  %152 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %153 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %152, i32 0, i32 27
  store i32 3, i32* %153, align 4
  %154 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %155 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %154, i32 0, i32 28
  store i32 1, i32* %155, align 8
  %156 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %157 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %156, i32 0, i32 29
  store i32 1, i32* %157, align 4
  %158 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %159 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %158, i32 0, i32 30
  store i32 1, i32* %159, align 8
  %160 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %161 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %160, i32 0, i32 53
  store i64 0, i64* %161, align 8
  %162 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %163 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %162, i32 0, i32 31
  store i32 1, i32* %163, align 4
  %164 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %165 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %164, i32 0, i32 52
  store i64 0, i64* %165, align 8
  %166 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %167 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %166, i32 0, i32 32
  store i32 1, i32* %167, align 8
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %169 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %168, i32 0, i32 33
  store i32 2000, i32* %169, align 4
  %170 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %171 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %170, i32 0, i32 34
  store i32 10000, i32* %171, align 8
  %172 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %173 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %172, i32 0, i32 35
  store i32 2000, i32* %173, align 4
  %174 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %175 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %174, i32 0, i32 36
  store i32 15000, i32* %175, align 8
  %176 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %177 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %176, i32 0, i32 37
  store i32 1, i32* %177, align 4
  %178 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %179 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %178, i32 0, i32 38
  store i32 1, i32* %179, align 8
  %180 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %181 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %180, i32 0, i32 39
  store i32 1, i32* %181, align 4
  %182 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %183 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %182, i32 0, i32 40
  store i32 1, i32* %183, align 8
  %184 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %185 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %184, i32 0, i32 41
  store i32 100, i32* %185, align 4
  %186 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %187 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %186, i32 0, i32 42
  store i32 40, i32* %187, align 8
  %188 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %189 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %188, i32 0, i32 43
  store i32 20, i32* %189, align 4
  %190 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %191 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %190, i32 0, i32 44
  store i32 1, i32* %191, align 8
  %192 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %193 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %192, i32 0, i32 45
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* @msi_en, align 4
  %195 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %196 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %195, i32 0, i32 51
  store i32 %194, i32* %196, align 8
  %197 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %198 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %197, i32 0, i32 50
  store i64 0, i64* %198, align 8
  %199 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %200 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %199, i32 0, i32 49
  store i64 0, i64* %200, align 8
  %201 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %202 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %201, i32 0, i32 48
  store i64 0, i64* %202, align 8
  %203 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %204 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %203, i32 0, i32 46
  store i32 1, i32* %204, align 8
  %205 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %206 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %205, i32 0, i32 47
  store i32 1000, i32* %206, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
