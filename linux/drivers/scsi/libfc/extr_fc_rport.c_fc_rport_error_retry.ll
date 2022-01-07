; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error %d in state %s, retrying\0A\00", align 1
@FC_EX_TIMEOUT = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, i32)* @fc_rport_error_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_error_retry(%struct.fc_rport_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %7 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %11 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %10, i32 0, i32 4
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FC_EX_CLOSED, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %20 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %23 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %18
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %32 = call i32 @fc_rport_state(%struct.fc_rport_priv* %31)
  %33 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %35 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @FC_EX_TIMEOUT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %45 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %44, i32 0, i32 1
  %46 = call i32 @kref_get(i32* %45)
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 2
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @schedule_delayed_work(i32* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %54 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %53, i32 0, i32 1
  %55 = load i32, i32* @fc_rport_destroy, align 4
  %56 = call i32 @kref_put(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  br label %63

58:                                               ; preds = %18
  br label %59

59:                                               ; preds = %58, %17
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @fc_rport_error(%struct.fc_rport_priv* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %57
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
