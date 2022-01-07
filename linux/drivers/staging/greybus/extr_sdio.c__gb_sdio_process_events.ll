; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GB_SDIO_CARD_INSERTED = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@GB_SDIO_CARD_REMOVED = common dso_local global i32 0, align 4
@GB_SDIO_WP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"card %s now event\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"inserted\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_sdio_host*, i32)* @_gb_sdio_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gb_sdio_process_events(%struct.gb_sdio_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_sdio_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GB_SDIO_CARD_INSERTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %13 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %11
  %22 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %23 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %82

27:                                               ; preds = %21
  %28 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %29 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GB_SDIO_CARD_REMOVED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %37 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %82

45:                                               ; preds = %35
  %46 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %47 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %82

51:                                               ; preds = %45
  %52 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %53 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %30
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GB_SDIO_WP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %61 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %67 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @mmc_dev(%struct.TYPE_3__* %68)
  %70 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %71 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @dev_info(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %78 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @mmc_detect_change(%struct.TYPE_3__* %79, i32 0)
  br label %81

81:                                               ; preds = %65, %62
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %50, %44, %26, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @mmc_detect_change(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
