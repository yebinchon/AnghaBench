; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i64, i32, i32 }
%struct.fc_frame = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error %ld in state %s, retries %d\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame*)* @fc_lport_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_error(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i64, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %8 = call i64 @IS_ERR(%struct.fc_frame* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.fc_frame* %11)
  %13 = sub nsw i32 0, %12
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = call i32 @fc_lport_state(%struct.fc_lport* %17)
  %19 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i64 %21)
  %23 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.fc_frame* %23)
  %25 = load i32, i32* @FC_EX_CLOSED, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %59

29:                                               ; preds = %15
  %30 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %43 = icmp ne %struct.fc_frame* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i64 @msecs_to_jiffies(i32 500)
  store i64 %45, i64* %5, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %48 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %44
  %52 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %53 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %52, i32 0, i32 3
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @schedule_delayed_work(i32* %53, i64 %54)
  br label %59

56:                                               ; preds = %29
  %57 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %58 = call i32 @fc_lport_enter_reset(%struct.fc_lport* %57)
  br label %59

59:                                               ; preds = %28, %56, %51
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @fc_lport_enter_reset(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
