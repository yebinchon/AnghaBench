; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_fillup_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_fillup_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.hw_fib = type { i32 }
%struct.fib = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, %struct.hw_fib**, %struct.fib**, i32)* @fillup_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fillup_pools(%struct.aac_dev* %0, %struct.hw_fib** %1, %struct.fib** %2, i32 %3) #0 {
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca %struct.hw_fib**, align 8
  %7 = alloca %struct.fib**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw_fib**, align 8
  %10 = alloca %struct.fib**, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %5, align 8
  store %struct.hw_fib** %1, %struct.hw_fib*** %6, align 8
  store %struct.fib** %2, %struct.fib*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hw_fib**, %struct.hw_fib*** %6, align 8
  store %struct.hw_fib** %11, %struct.hw_fib*** %9, align 8
  %12 = load %struct.fib**, %struct.fib*** %7, align 8
  store %struct.fib** %12, %struct.fib*** %10, align 8
  br label %13

13:                                               ; preds = %46, %4
  %14 = load %struct.hw_fib**, %struct.hw_fib*** %9, align 8
  %15 = load %struct.hw_fib**, %struct.hw_fib*** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hw_fib*, %struct.hw_fib** %15, i64 %17
  %19 = icmp ult %struct.hw_fib** %14, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i32 4, i32 %21)
  %23 = bitcast i8* %22 to %struct.hw_fib*
  %24 = load %struct.hw_fib**, %struct.hw_fib*** %9, align 8
  store %struct.hw_fib* %23, %struct.hw_fib** %24, align 8
  %25 = load %struct.hw_fib**, %struct.hw_fib*** %9, align 8
  %26 = getelementptr inbounds %struct.hw_fib*, %struct.hw_fib** %25, i32 1
  store %struct.hw_fib** %26, %struct.hw_fib*** %9, align 8
  %27 = load %struct.hw_fib*, %struct.hw_fib** %25, align 8
  %28 = icmp ne %struct.hw_fib* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load %struct.hw_fib**, %struct.hw_fib*** %9, align 8
  %31 = getelementptr inbounds %struct.hw_fib*, %struct.hw_fib** %30, i32 -1
  store %struct.hw_fib** %31, %struct.hw_fib*** %9, align 8
  br label %47

32:                                               ; preds = %20
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i32 4, i32 %33)
  %35 = bitcast i8* %34 to %struct.fib*
  %36 = load %struct.fib**, %struct.fib*** %10, align 8
  store %struct.fib* %35, %struct.fib** %36, align 8
  %37 = load %struct.fib**, %struct.fib*** %10, align 8
  %38 = getelementptr inbounds %struct.fib*, %struct.fib** %37, i32 1
  store %struct.fib** %38, %struct.fib*** %10, align 8
  %39 = load %struct.fib*, %struct.fib** %37, align 8
  %40 = icmp ne %struct.fib* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.hw_fib**, %struct.hw_fib*** %9, align 8
  %43 = getelementptr inbounds %struct.hw_fib*, %struct.hw_fib** %42, i32 -1
  store %struct.hw_fib** %43, %struct.hw_fib*** %9, align 8
  %44 = load %struct.hw_fib*, %struct.hw_fib** %43, align 8
  %45 = call i32 @kfree(%struct.hw_fib* %44)
  br label %47

46:                                               ; preds = %32
  br label %13

47:                                               ; preds = %41, %29, %13
  %48 = load %struct.hw_fib**, %struct.hw_fib*** %9, align 8
  %49 = load %struct.hw_fib**, %struct.hw_fib*** %6, align 8
  %50 = ptrtoint %struct.hw_fib** %48 to i64
  %51 = ptrtoint %struct.hw_fib** %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.hw_fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
