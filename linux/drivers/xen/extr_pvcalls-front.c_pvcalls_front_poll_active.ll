; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_poll_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_poll_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pvcalls_bedata = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pvcalls_data_intf* }
%struct.pvcalls_data_intf = type { i64, i64 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.pvcalls_bedata*, %struct.sock_mapping*, i32*)* @pvcalls_front_poll_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_front_poll_active(%struct.file* %0, %struct.pvcalls_bedata* %1, %struct.sock_mapping* %2, i32* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.pvcalls_bedata*, align 8
  %7 = alloca %struct.sock_mapping*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pvcalls_data_intf*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.pvcalls_bedata* %1, %struct.pvcalls_bedata** %6, align 8
  store %struct.sock_mapping* %2, %struct.sock_mapping** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %14 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %15, align 8
  store %struct.pvcalls_data_intf* %16, %struct.pvcalls_data_intf** %12, align 8
  %17 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %12, align 8
  %18 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %12, align 8
  %21 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %25 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @poll_wait(%struct.file* %23, i32* %26, i32* %27)
  %29 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %30 = call i64 @pvcalls_front_write_todo(%struct.sock_mapping* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* @EPOLLOUT, align 4
  %34 = load i32, i32* @EPOLLWRNORM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %4
  %39 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %40 = call i64 @pvcalls_front_read_todo(%struct.sock_mapping* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @EPOLLIN, align 4
  %44 = load i32, i32* @EPOLLRDNORM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @EPOLLERR, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @pvcalls_front_write_todo(%struct.sock_mapping*) #1

declare dso_local i64 @pvcalls_front_read_todo(%struct.sock_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
