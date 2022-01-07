; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fwtty_peer = type { %struct.fw_serial* }
%struct.fw_serial = type { i32, i32*, i32, i32, i32 }

@fwserial_list_mutex = common dso_local global i32 0, align 4
@num_ttys = common dso_local global i32 0, align 4
@fwtty_driver = common dso_local global i32 0, align 4
@create_loop_dev = common dso_local global i64 0, align 8
@fwloop_driver = common dso_local global i32 0, align 4
@fwserial_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @fwserial_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_remove(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.fw_serial*, align 8
  %5 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %6 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %7 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %6, i32 0, i32 0
  %8 = call %struct.fwtty_peer* @dev_get_drvdata(i32* %7)
  store %struct.fwtty_peer* %8, %struct.fwtty_peer** %3, align 8
  %9 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %10 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %9, i32 0, i32 0
  %11 = load %struct.fw_serial*, %struct.fw_serial** %10, align 8
  store %struct.fw_serial* %11, %struct.fw_serial** %4, align 8
  %12 = call i32 @mutex_lock(i32* @fwserial_list_mutex)
  %13 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %14 = call i32 @fwserial_remove_peer(%struct.fwtty_peer* %13)
  %15 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %16 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %15, i32 0, i32 4
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %1
  %20 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %21 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %20, i32 0, i32 3
  %22 = call i32 @list_del_rcu(i32* %21)
  %23 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %24 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @debugfs_remove_recursive(i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @num_ttys, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @fwtty_driver, align 4
  %33 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %34 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fwserial_close_port(i32 %32, i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load i64, i64* @create_loop_dev, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* @fwloop_driver, align 4
  %49 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %50 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fwserial_close_port(i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %47, %44
  %58 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %59 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %58, i32 0, i32 0
  %60 = load i32, i32* @fwserial_destroy, align 4
  %61 = call i32 @kref_put(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %1
  %63 = call i32 @mutex_unlock(i32* @fwserial_list_mutex)
  ret void
}

declare dso_local %struct.fwtty_peer* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fwserial_remove_peer(%struct.fwtty_peer*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @fwserial_close_port(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
