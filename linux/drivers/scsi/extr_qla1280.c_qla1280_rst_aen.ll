; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_rst_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_rst_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"qla1280_rst_aen\00", align 1
@MK_SYNC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla1280_rst_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla1280_rst_aen(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = call i32 @ENTER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %1
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %10
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %77, label %22

22:                                               ; preds = %16
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %75, %22
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %72, %32
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i1 [ false, %36 ], [ %48, %42 ]
  br i1 %50, label %51, label %75

51:                                               ; preds = %49
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load i32, i32* @MK_SYNC_ALL, align 4
  %70 = call i32 @qla1280_marker(%struct.scsi_qla_host* %67, i64 %68, i32 0, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %60, %51
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %36

75:                                               ; preds = %49
  br label %26

76:                                               ; preds = %26
  br label %77

77:                                               ; preds = %76, %16, %10, %1
  %78 = call i32 @LEAVE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i32 @qla1280_marker(%struct.scsi_qla_host*, i64, i32, i32, i32) #1

declare dso_local i32 @LEAVE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
