; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_offload_damage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_offload_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i32, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlfb_data*, i32, i32, i32, i32)* @dlfb_offload_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlfb_offload_damage(%struct.dlfb_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlfb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dlfb_data* %0, %struct.dlfb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %5
  br label %68

28:                                               ; preds = %23
  %29 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %30 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %29, i32 0, i32 1
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %35 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @min(i32 %33, i8* %36)
  %38 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %39 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %42 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @max(i32 %40, i8* %43)
  %45 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %46 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %49 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @min(i32 %47, i8* %50)
  %52 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %53 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %56 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @max(i32 %54, i8* %57)
  %59 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %60 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %62 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %61, i32 0, i32 1
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %66 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %65, i32 0, i32 0
  %67 = call i32 @schedule_work(i32* %66)
  br label %68

68:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @min(i32, i8*) #1

declare dso_local i8* @max(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
