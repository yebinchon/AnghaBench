; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_identify_conf_parts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_identify_conf_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_eckd_private = type { i32, %struct.dasd_gneq*, %struct.vd_sneq*, %struct.dasd_sneq*, %struct.dasd_ned*, i64 }
%struct.dasd_gneq = type { i32 }
%struct.vd_sneq = type { i32 }
%struct.dasd_sneq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_ned = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_eckd_private*)* @dasd_eckd_identify_conf_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_eckd_private*, align 8
  %4 = alloca %struct.dasd_sneq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dasd_eckd_private* %0, %struct.dasd_eckd_private** %3, align 8
  %7 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %7, i32 0, i32 4
  store %struct.dasd_ned* null, %struct.dasd_ned** %8, align 8
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %9, i32 0, i32 3
  store %struct.dasd_sneq* null, %struct.dasd_sneq** %10, align 8
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %11, i32 0, i32 2
  store %struct.vd_sneq* null, %struct.vd_sneq** %12, align 8
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 1
  store %struct.dasd_gneq* null, %struct.dasd_gneq** %14, align 8
  %15 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 12
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dasd_sneq*
  store %struct.dasd_sneq* %24, %struct.dasd_sneq** %4, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %93, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %25
  %30 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %31 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %37 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %42 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %43 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %42, i32 0, i32 3
  store %struct.dasd_sneq* %41, %struct.dasd_sneq** %43, align 8
  br label %90

44:                                               ; preds = %35, %29
  %45 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %46 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %57 = bitcast %struct.dasd_sneq* %56 to %struct.vd_sneq*
  %58 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %59 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %58, i32 0, i32 2
  store %struct.vd_sneq* %57, %struct.vd_sneq** %59, align 8
  br label %89

60:                                               ; preds = %50, %44
  %61 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %62 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %68 = bitcast %struct.dasd_sneq* %67 to %struct.dasd_gneq*
  %69 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %70 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %69, i32 0, i32 1
  store %struct.dasd_gneq* %68, %struct.dasd_gneq** %70, align 8
  br label %88

71:                                               ; preds = %60
  %72 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %73 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %79 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %84 = bitcast %struct.dasd_sneq* %83 to %struct.dasd_ned*
  %85 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %86 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %85, i32 0, i32 4
  store %struct.dasd_ned* %84, %struct.dasd_ned** %86, align 8
  br label %87

87:                                               ; preds = %82, %77, %71
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %40
  %91 = load %struct.dasd_sneq*, %struct.dasd_sneq** %4, align 8
  %92 = getelementptr inbounds %struct.dasd_sneq, %struct.dasd_sneq* %91, i32 1
  store %struct.dasd_sneq* %92, %struct.dasd_sneq** %4, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %25

96:                                               ; preds = %25
  %97 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %98 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %97, i32 0, i32 4
  %99 = load %struct.dasd_ned*, %struct.dasd_ned** %98, align 8
  %100 = icmp ne %struct.dasd_ned* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %103 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %102, i32 0, i32 1
  %104 = load %struct.dasd_gneq*, %struct.dasd_gneq** %103, align 8
  %105 = icmp ne %struct.dasd_gneq* %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %108 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %107, i32 0, i32 4
  store %struct.dasd_ned* null, %struct.dasd_ned** %108, align 8
  %109 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %110 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %109, i32 0, i32 3
  store %struct.dasd_sneq* null, %struct.dasd_sneq** %110, align 8
  %111 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %112 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %111, i32 0, i32 2
  store %struct.vd_sneq* null, %struct.vd_sneq** %112, align 8
  %113 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %114 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %113, i32 0, i32 1
  store %struct.dasd_gneq* null, %struct.dasd_gneq** %114, align 8
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %106
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
