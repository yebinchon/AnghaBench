; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_secm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_secm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_subsystem = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_secm(%struct.channel_subsystem* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.channel_subsystem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.channel_subsystem* %0, %struct.channel_subsystem** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %11 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* @GFP_DMA, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %21 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @GFP_DMA, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @get_zeroed_page(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %28 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %30 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %14
  %34 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %35 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %33, %14
  %39 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %40 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = call i32 @free_page(i64 %42)
  %44 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %45 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = call i32 @free_page(i64 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %99

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %9, %2
  %53 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @__chsc_do_secm(%struct.channel_subsystem* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %61 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %63 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %68 = call i32 @chsc_add_cmg_attr(%struct.channel_subsystem* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %73 = call i32 @__chsc_do_secm(%struct.channel_subsystem* %72, i32 0)
  %74 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %75 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %80

77:                                               ; preds = %58
  %78 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %79 = call i32 @chsc_remove_cmg_attr(%struct.channel_subsystem* %78)
  br label %80

80:                                               ; preds = %77, %76
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %83 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %88 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = call i32 @free_page(i64 %90)
  %92 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %93 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = call i32 @free_page(i64 %95)
  br label %97

97:                                               ; preds = %86, %81
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %38
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @__chsc_do_secm(%struct.channel_subsystem*, i32) #1

declare dso_local i32 @chsc_add_cmg_attr(%struct.channel_subsystem*) #1

declare dso_local i32 @chsc_remove_cmg_attr(%struct.channel_subsystem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
