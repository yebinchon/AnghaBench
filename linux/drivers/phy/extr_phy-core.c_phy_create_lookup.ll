; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_create_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_create_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_lookup = type { i8*, i8*, i32, %struct.phy* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phy_provider_mutex = common dso_local global i32 0, align 4
@phys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_create_lookup(%struct.phy* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.phy_lookup*, align 8
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.phy*, %struct.phy** %5, align 8
  %10 = icmp ne %struct.phy* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.phy_lookup* @kzalloc(i32 32, i32 %21)
  store %struct.phy_lookup* %22, %struct.phy_lookup** %8, align 8
  %23 = load %struct.phy_lookup*, %struct.phy_lookup** %8, align 8
  %24 = icmp ne %struct.phy_lookup* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.phy_lookup*, %struct.phy_lookup** %8, align 8
  %31 = getelementptr inbounds %struct.phy_lookup, %struct.phy_lookup* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.phy_lookup*, %struct.phy_lookup** %8, align 8
  %34 = getelementptr inbounds %struct.phy_lookup, %struct.phy_lookup* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.phy*, %struct.phy** %5, align 8
  %36 = load %struct.phy_lookup*, %struct.phy_lookup** %8, align 8
  %37 = getelementptr inbounds %struct.phy_lookup, %struct.phy_lookup* %36, i32 0, i32 3
  store %struct.phy* %35, %struct.phy** %37, align 8
  %38 = call i32 @mutex_lock(i32* @phy_provider_mutex)
  %39 = load %struct.phy_lookup*, %struct.phy_lookup** %8, align 8
  %40 = getelementptr inbounds %struct.phy_lookup, %struct.phy_lookup* %39, i32 0, i32 2
  %41 = call i32 @list_add_tail(i32* %40, i32* @phys)
  %42 = call i32 @mutex_unlock(i32* @phy_provider_mutex)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %28, %25, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.phy_lookup* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
