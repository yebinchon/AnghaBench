; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_conn_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_conn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_mapping = type { i32, i32, %struct.pvcalls_ioworker, %struct.TYPE_4__* }
%struct.pvcalls_ioworker = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sock_mapping* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pvcalls_back_conn_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_conn_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sock_mapping*, align 8
  %7 = alloca %struct.pvcalls_ioworker*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sock_mapping*
  store %struct.sock_mapping* %9, %struct.sock_mapping** %6, align 8
  %10 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %11 = icmp eq %struct.sock_mapping* %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %14 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %19 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %26 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.sock_mapping*, %struct.sock_mapping** %30, align 8
  %32 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %33 = icmp ne %struct.sock_mapping* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24, %17, %12, %2
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %24
  %37 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %38 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %37, i32 0, i32 2
  store %struct.pvcalls_ioworker* %38, %struct.pvcalls_ioworker** %7, align 8
  %39 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %40 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %39, i32 0, i32 1
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %43 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.pvcalls_ioworker*, %struct.pvcalls_ioworker** %7, align 8
  %46 = getelementptr inbounds %struct.pvcalls_ioworker, %struct.pvcalls_ioworker* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pvcalls_ioworker*, %struct.pvcalls_ioworker** %7, align 8
  %49 = getelementptr inbounds %struct.pvcalls_ioworker, %struct.pvcalls_ioworker* %48, i32 0, i32 0
  %50 = call i32 @queue_work(i32 %47, i32* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %36, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
