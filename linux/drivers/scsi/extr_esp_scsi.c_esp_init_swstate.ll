; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_init_swstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_init_swstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@ESP_MAX_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_init_swstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_init_swstate(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %4 = load %struct.esp*, %struct.esp** %2, align 8
  %5 = getelementptr inbounds %struct.esp, %struct.esp* %4, i32 0, i32 3
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.esp*, %struct.esp** %2, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 2
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.esp*, %struct.esp** %2, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 1
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %53, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ESP_MAX_TARGET, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load %struct.esp*, %struct.esp** %2, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.esp*, %struct.esp** %2, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.esp*, %struct.esp** %2, align 8
  %33 = getelementptr inbounds %struct.esp, %struct.esp* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.esp*, %struct.esp** %2, align 8
  %40 = getelementptr inbounds %struct.esp, %struct.esp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.esp*, %struct.esp** %2, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %17
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %13

56:                                               ; preds = %13
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
