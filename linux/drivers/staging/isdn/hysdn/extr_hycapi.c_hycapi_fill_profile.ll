; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hycapi.c_hycapi_fill_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hycapi.c_hycapi_fill_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.capi_ctr }
%struct.capi_ctr = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Hypercope\00", align 1
@GLOBAL_OPTION_INTERNAL_CONTROLLER = common dso_local global i32 0, align 4
@GLOBAL_OPTION_B_CHANNEL_OPERATION = common dso_local global i32 0, align 4
@B1_PROT_64KBIT_HDLC = common dso_local global i32 0, align 4
@B1_PROT_T30 = common dso_local global i32 0, align 4
@B1_PROT_64KBIT_TRANSPARENT = common dso_local global i32 0, align 4
@B2_PROT_ISO7776 = common dso_local global i32 0, align 4
@B2_PROT_T30 = common dso_local global i32 0, align 4
@B2_PROT_TRANSPARENT = common dso_local global i32 0, align 4
@B3_PROT_TRANSPARENT = common dso_local global i32 0, align 4
@B3_PROT_T90NL = common dso_local global i32 0, align 4
@B3_PROT_T30 = common dso_local global i32 0, align 4
@B3_PROT_T30EXT = common dso_local global i32 0, align 4
@B3_PROT_ISO8208 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @hycapi_fill_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hycapi_fill_profile(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.capi_ctr*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store %struct.capi_ctr* null, %struct.capi_ctr** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %108

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.capi_ctr* %13, %struct.capi_ctr** %4, align 8
  %14 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %15 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %19 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %22 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %25 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 3, i32* %26, align 4
  %27 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %28 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 2, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %34 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %40 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @GLOBAL_OPTION_INTERNAL_CONTROLLER, align 4
  %43 = load i32, i32* @GLOBAL_OPTION_B_CHANNEL_OPERATION, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %46 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @B1_PROT_64KBIT_HDLC, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %11
  %54 = load i32, i32* @B1_PROT_T30, align 4
  br label %56

55:                                               ; preds = %11
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %48, %57
  %59 = load i32, i32* @B1_PROT_64KBIT_TRANSPARENT, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %62 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @B2_PROT_ISO7776, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* @B2_PROT_T30, align 4
  br label %72

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %64, %73
  %75 = load i32, i32* @B2_PROT_TRANSPARENT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %78 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @B3_PROT_TRANSPARENT, align 4
  %81 = load i32, i32* @B3_PROT_T90NL, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* @B3_PROT_T30, align 4
  br label %90

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = or i32 %82, %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @B3_PROT_T30EXT, align 4
  br label %100

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = or i32 %92, %101
  %103 = load i32, i32* @B3_PROT_ISO8208, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %106 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %10
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
