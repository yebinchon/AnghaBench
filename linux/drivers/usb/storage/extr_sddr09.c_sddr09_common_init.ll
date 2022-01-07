; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"active config #%d != 1 ??\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Result of usb_reset_configuration is %d\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"-- stall on control interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"-- Unknown error.  Rejecting device\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sddr09_card_info_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @sddr09_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_common_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.us_data*, %struct.us_data** %3, align 8
  %16 = load %struct.us_data*, %struct.us_data** %3, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %68

27:                                               ; preds = %1
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = getelementptr inbounds %struct.us_data, %struct.us_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @usb_reset_configuration(%struct.TYPE_6__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.us_data*, %struct.us_data** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EPIPE, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.us_data*, %struct.us_data** %3, align 8
  %41 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %51

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.us_data*, %struct.us_data** %3, align 8
  %47 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %68

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* @GFP_NOIO, align 4
  %53 = call i32 @kzalloc(i32 4, i32 %52)
  %54 = load %struct.us_data*, %struct.us_data** %3, align 8
  %55 = getelementptr inbounds %struct.us_data, %struct.us_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.us_data*, %struct.us_data** %3, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %51
  %64 = load i32, i32* @sddr09_card_info_destructor, align 4
  %65 = load %struct.us_data*, %struct.us_data** %3, align 8
  %66 = getelementptr inbounds %struct.us_data, %struct.us_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = call i32 (...) @nand_init_ecc()
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %60, %45, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_reset_configuration(%struct.TYPE_6__*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @nand_init_ecc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
