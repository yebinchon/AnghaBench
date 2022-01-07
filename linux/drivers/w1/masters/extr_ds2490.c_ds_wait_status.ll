; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_wait_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32*, i32* }
%struct.ds_status = type { i32 }

@ST_IDLE = common dso_local global i32 0, align 4
@ST_EPOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Resetting device after ST_EPOF.\0A\00", align 1
@EP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, %struct.ds_status*)* @ds_wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_wait_status(%struct.ds_device* %0, %struct.ds_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds_device*, align 8
  %5 = alloca %struct.ds_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ds_device* %0, %struct.ds_device** %4, align 8
  store %struct.ds_status* %1, %struct.ds_status** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load %struct.ds_status*, %struct.ds_status** %5, align 8
  %10 = getelementptr inbounds %struct.ds_status, %struct.ds_status* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %12 = load %struct.ds_status*, %struct.ds_status** %5, align 8
  %13 = call i32 @ds_recv_status(%struct.ds_device* %11, %struct.ds_status* %12, i32 0)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %8
  %15 = load %struct.ds_status*, %struct.ds_status** %5, align 8
  %16 = getelementptr inbounds %struct.ds_status, %struct.ds_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ST_IDLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 100
  br label %28

28:                                               ; preds = %24, %21, %14
  %29 = phi i1 [ false, %21 ], [ false, %14 ], [ %27, %24 ]
  br i1 %29, label %8, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 16
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.ds_status*, %struct.ds_status** %5, align 8
  %35 = getelementptr inbounds %struct.ds_status, %struct.ds_status* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ST_EPOF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %43 = call i32 @ds_reset_device(%struct.ds_device* %42)
  store i32 101, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %33, %30
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 16
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 100
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50, %47, %44
  %54 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %55 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %56 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ds_dump_status(%struct.ds_device* %54, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 100
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60
  store i32 -1, i32* %3, align 4
  br label %68

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ds_recv_status(%struct.ds_device*, %struct.ds_status*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ds_reset_device(%struct.ds_device*) #1

declare dso_local i32 @ds_dump_status(%struct.ds_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
