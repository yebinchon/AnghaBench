; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_start_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_start_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32, %struct.TYPE_2__*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XDOMAIN_UUID_RETRIES = common dso_local global i32 0, align 4
@XDOMAIN_PROPERTIES_RETRIES = common dso_local global i32 0, align 4
@XDOMAIN_PROPERTIES_CHANGED_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_xdomain*)* @start_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_handshake(%struct.tb_xdomain* %0) #0 {
  %2 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb_xdomain* %0, %struct.tb_xdomain** %2, align 8
  %3 = load i32, i32* @XDOMAIN_UUID_RETRIES, align 4
  %4 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %5 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %4, i32 0, i32 7
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @XDOMAIN_PROPERTIES_RETRIES, align 4
  %7 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %8 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @XDOMAIN_PROPERTIES_CHANGED_RETRIES, align 4
  %10 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %11 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %13 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %18 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %23 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %22, i32 0, i32 3
  %24 = call i32 @msecs_to_jiffies(i32 100)
  %25 = call i32 @queue_delayed_work(i32 %21, i32* %23, i32 %24)
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %28 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %33 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %32, i32 0, i32 2
  %34 = call i32 @msecs_to_jiffies(i32 100)
  %35 = call i32 @queue_delayed_work(i32 %31, i32* %33, i32 %34)
  %36 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %37 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %42 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %41, i32 0, i32 0
  %43 = call i32 @msecs_to_jiffies(i32 1000)
  %44 = call i32 @queue_delayed_work(i32 %40, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %26, %16
  ret void
}

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
