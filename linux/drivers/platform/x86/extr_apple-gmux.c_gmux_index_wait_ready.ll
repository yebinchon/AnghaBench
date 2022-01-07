; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_index_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_index_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i64 }

@GMUX_PORT_WRITE = common dso_local global i64 0, align 8
@GMUX_PORT_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apple_gmux_data*)* @gmux_index_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmux_index_wait_ready(%struct.apple_gmux_data* %0) #0 {
  %2 = alloca %struct.apple_gmux_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.apple_gmux_data* %0, %struct.apple_gmux_data** %2, align 8
  store i32 200, i32* %3, align 4
  %5 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %6 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GMUX_PORT_WRITE, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inb(i64 %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %20, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %36

20:                                               ; preds = %18
  %21 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %22 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GMUX_PORT_READ, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb(i64 %25)
  %27 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %2, align 8
  %28 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GMUX_PORT_WRITE, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = call i32 @udelay(i32 100)
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %11

36:                                               ; preds = %18
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
