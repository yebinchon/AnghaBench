; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_get_chipset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_get_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.intelfb_info = type { i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Intel(R) 830M\00", align 1
@INTEL_830M = common dso_local global i32 0, align 4
@PLLS_I8xx = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Intel(R) 845G\00", align 1
@INTEL_845G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Intel(R) 854\00", align 1
@INTEL_854 = common dso_local global i32 0, align 4
@INTEL_85X_CAPID = common dso_local global i32 0, align 4
@INTEL_85X_VARIANT_SHIFT = common dso_local global i32 0, align 4
@INTEL_85X_VARIANT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Intel(R) 855GME\00", align 1
@INTEL_855GME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Intel(R) 855GM\00", align 1
@INTEL_855GM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Intel(R) 852GME\00", align 1
@INTEL_852GME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Intel(R) 852GM\00", align 1
@INTEL_852GM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Intel(R) 852GM/855GM\00", align 1
@INTEL_85XGM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Intel(R) 865G\00", align 1
@INTEL_865G = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"Intel(R) 915G\00", align 1
@INTEL_915G = common dso_local global i32 0, align 4
@PLLS_I9xx = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"Intel(R) 915GM\00", align 1
@INTEL_915GM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"Intel(R) 945G\00", align 1
@INTEL_945G = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Intel(R) 945GM\00", align 1
@INTEL_945GM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"Intel(R) 945GME\00", align 1
@INTEL_945GME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"Intel(R) 965G\00", align 1
@INTEL_965G = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"Intel(R) 965GM\00", align 1
@INTEL_965GM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_get_chipset(%struct.pci_dev* %0, %struct.intelfb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.intelfb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.intelfb_info* %1, %struct.intelfb_info** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %11 = icmp ne %struct.intelfb_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 1, i32* %3, align 4
  br label %180

13:                                               ; preds = %9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %179 [
    i32 139, label %17
    i32 138, label %28
    i32 137, label %39
    i32 136, label %47
    i32 135, label %91
    i32 134, label %102
    i32 133, label %113
    i32 132, label %124
    i32 131, label %135
    i32 130, label %146
    i32 129, label %157
    i32 128, label %168
  ]

17:                                               ; preds = %13
  %18 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %19 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @INTEL_830M, align 4
  %21 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %22 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %24 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load i8*, i8** @PLLS_I8xx, align 8
  %26 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %27 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %3, align 4
  br label %180

28:                                               ; preds = %13
  %29 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @INTEL_845G, align 4
  %32 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %33 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %35 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load i8*, i8** @PLLS_I8xx, align 8
  %37 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %38 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  store i32 0, i32* %3, align 4
  br label %180

39:                                               ; preds = %13
  %40 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %41 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %43 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* @INTEL_854, align 4
  %45 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %46 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %180

47:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  %48 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %49 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load i8*, i8** @PLLS_I8xx, align 8
  %51 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %52 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load i32, i32* @INTEL_85X_CAPID, align 4
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %53, i32 %54, i32* %6)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @INTEL_85X_VARIANT_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = load i32, i32* @INTEL_85X_VARIANT_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %85 [
    i32 140, label %61
    i32 141, label %67
    i32 142, label %73
    i32 143, label %79
  ]

61:                                               ; preds = %47
  %62 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %63 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @INTEL_855GME, align 4
  %65 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %66 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %3, align 4
  br label %180

67:                                               ; preds = %47
  %68 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %69 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @INTEL_855GM, align 4
  %71 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %72 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %3, align 4
  br label %180

73:                                               ; preds = %47
  %74 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %75 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %75, align 8
  %76 = load i32, i32* @INTEL_852GME, align 4
  %77 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %78 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %3, align 4
  br label %180

79:                                               ; preds = %47
  %80 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %81 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %81, align 8
  %82 = load i32, i32* @INTEL_852GM, align 4
  %83 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %84 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %180

85:                                               ; preds = %47
  %86 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %87 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %87, align 8
  %88 = load i32, i32* @INTEL_85XGM, align 4
  %89 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %90 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %180

91:                                               ; preds = %13
  %92 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %93 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %93, align 8
  %94 = load i32, i32* @INTEL_865G, align 4
  %95 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %96 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %98 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  %99 = load i8*, i8** @PLLS_I8xx, align 8
  %100 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %101 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  store i32 0, i32* %3, align 4
  br label %180

102:                                              ; preds = %13
  %103 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %104 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %104, align 8
  %105 = load i32, i32* @INTEL_915G, align 4
  %106 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %107 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %109 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  %110 = load i8*, i8** @PLLS_I9xx, align 8
  %111 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %112 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  store i32 0, i32* %3, align 4
  br label %180

113:                                              ; preds = %13
  %114 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %115 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %115, align 8
  %116 = load i32, i32* @INTEL_915GM, align 4
  %117 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %118 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %120 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %119, i32 0, i32 1
  store i32 1, i32* %120, align 8
  %121 = load i8*, i8** @PLLS_I9xx, align 8
  %122 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %123 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  store i32 0, i32* %3, align 4
  br label %180

124:                                              ; preds = %13
  %125 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %126 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %126, align 8
  %127 = load i32, i32* @INTEL_945G, align 4
  %128 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %129 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %131 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %130, i32 0, i32 1
  store i32 0, i32* %131, align 8
  %132 = load i8*, i8** @PLLS_I9xx, align 8
  %133 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %134 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  store i32 0, i32* %3, align 4
  br label %180

135:                                              ; preds = %13
  %136 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %137 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %137, align 8
  %138 = load i32, i32* @INTEL_945GM, align 4
  %139 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %140 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %142 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %141, i32 0, i32 1
  store i32 1, i32* %142, align 8
  %143 = load i8*, i8** @PLLS_I9xx, align 8
  %144 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %145 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  store i32 0, i32* %3, align 4
  br label %180

146:                                              ; preds = %13
  %147 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %148 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %147, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %148, align 8
  %149 = load i32, i32* @INTEL_945GME, align 4
  %150 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %151 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %153 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %152, i32 0, i32 1
  store i32 1, i32* %153, align 8
  %154 = load i8*, i8** @PLLS_I9xx, align 8
  %155 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %156 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  store i32 0, i32* %3, align 4
  br label %180

157:                                              ; preds = %13
  %158 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %159 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %159, align 8
  %160 = load i32, i32* @INTEL_965G, align 4
  %161 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %162 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %164 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %163, i32 0, i32 1
  store i32 0, i32* %164, align 8
  %165 = load i8*, i8** @PLLS_I9xx, align 8
  %166 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %167 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  store i32 0, i32* %3, align 4
  br label %180

168:                                              ; preds = %13
  %169 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %170 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %169, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %170, align 8
  %171 = load i32, i32* @INTEL_965GM, align 4
  %172 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %173 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %175 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %174, i32 0, i32 1
  store i32 1, i32* %175, align 8
  %176 = load i8*, i8** @PLLS_I9xx, align 8
  %177 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %178 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  store i32 0, i32* %3, align 4
  br label %180

179:                                              ; preds = %13
  store i32 1, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %168, %157, %146, %135, %124, %113, %102, %91, %85, %79, %73, %67, %61, %39, %28, %17, %12
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
