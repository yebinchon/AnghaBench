; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_capi.c_gigaset_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_capi.c_gigaset_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.capi_ctr* }
%struct.capi_ctr = type { i32, %struct.cardstate* }
%struct.cardstate = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64, i64, i64, i32*, i64, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%-16s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%-16s %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%-16s %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%-16s %d.%d.%d.%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"onechannel\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Unimodem\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"CID\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"uninitialized\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"mstate\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"isdn_up\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"cidmode\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"[%d]%-13s %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"corrupted\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"trans_down\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"trans_up\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"chstate\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"bitsync\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"HDLC\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"[%d]%-13s %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"proto2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @gigaset_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.capi_ctr*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.capi_ctr*, %struct.capi_ctr** %10, align 8
  store %struct.capi_ctr* %11, %struct.capi_ctr** %5, align 8
  %12 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %13 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %12, i32 0, i32 1
  %14 = load %struct.cardstate*, %struct.cardstate** %13, align 8
  store %struct.cardstate* %14, %struct.cardstate** %6, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %17 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_driver_string(i32 %23)
  %25 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_name(i32 %27)
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %2
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %42 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %41, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %52 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 9
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %45, i32 %50, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %39, %2
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %74)
  %76 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %83 [
    i32 128, label %79
    i32 130, label %80
    i32 129, label %81
    i32 131, label %82
  ]

79:                                               ; preds = %62
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  br label %84

80:                                               ; preds = %62
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %7, align 8
  br label %84

81:                                               ; preds = %62
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %7, align 8
  br label %84

82:                                               ; preds = %62
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %7, align 8
  br label %84

83:                                               ; preds = %62
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %84

84:                                               ; preds = %83, %82, %81, %80, %79
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %86)
  %88 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %89 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %97 [
    i32 132, label %91
    i32 137, label %92
    i32 136, label %93
    i32 133, label %94
    i32 134, label %95
    i32 135, label %96
  ]

91:                                               ; preds = %84
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %7, align 8
  br label %98

92:                                               ; preds = %84
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %7, align 8
  br label %98

93:                                               ; preds = %84
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %7, align 8
  br label %98

94:                                               ; preds = %84
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %7, align 8
  br label %98

95:                                               ; preds = %84
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %7, align 8
  br label %98

96:                                               ; preds = %84
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8** %7, align 8
  br label %98

97:                                               ; preds = %84
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %98

98:                                               ; preds = %97, %96, %95, %94, %93, %92, %91
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %104 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %109 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %112 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %117 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %120 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %125 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %128 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %133 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %132)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %202, %98
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %137 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %205

140:                                              ; preds = %134
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %144 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* %150)
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %155 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %166 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %165, i32 0, i32 3
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* %172)
  %174 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %177 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %176, i32 0, i32 3
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* %183)
  %185 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %186 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %185, i32 0, i32 3
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  switch i32 %192, label %196 [
    i32 140, label %193
    i32 139, label %194
    i32 138, label %195
  ]

193:                                              ; preds = %140
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8** %7, align 8
  br label %197

194:                                              ; preds = %140
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %7, align 8
  br label %197

195:                                              ; preds = %140
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8** %7, align 8
  br label %197

196:                                              ; preds = %140
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %197

197:                                              ; preds = %196, %195, %194, %193
  %198 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %134

205:                                              ; preds = %134
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @dev_driver_string(i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
