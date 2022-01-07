; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_mport_get_physefb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_mport_get_physefb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_mport_get_physefb(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @rio_mport_get_efb(%struct.rio_mport* %14, i32 %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %46, %5
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @rio_local_read_config_32(%struct.rio_mport* %26, i32 %27, i32* %13)
  br label %35

29:                                               ; preds = %22
  %30 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %30, i32 %31, i32 %32, i32 %33, i32* %13)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @RIO_GET_BLOCK_ID(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %45 [
    i32 133, label %39
    i32 130, label %39
    i32 134, label %39
    i32 132, label %39
    i32 129, label %39
    i32 138, label %39
    i32 136, label %39
    i32 131, label %42
    i32 128, label %42
    i32 137, label %42
    i32 135, label %42
  ]

39:                                               ; preds = %35, %35, %35, %35, %35, %35, %35
  %40 = load i32*, i32** %11, align 8
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %55

42:                                               ; preds = %35, %35, %35, %35
  %43 = load i32*, i32** %11, align 8
  store i32 2, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %55

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @rio_mport_get_efb(%struct.rio_mport* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %42, %39
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @rio_mport_get_efb(%struct.rio_mport*, i32, i32, i32, i32) #1

declare dso_local i32 @rio_local_read_config_32(%struct.rio_mport*, i32, i32*) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i32, i32*) #1

declare dso_local i32 @RIO_GET_BLOCK_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
