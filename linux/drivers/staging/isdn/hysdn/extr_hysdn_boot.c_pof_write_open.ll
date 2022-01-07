; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_boot.c_pof_write_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_boot.c_pof_write_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, %struct.boot_data* }
%struct.boot_data = type { i32, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i8* }

@LOG_POF_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"POF open: already opened for boot\00", align 1
@ERR_ALREADY_BOOT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LOG_MEM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"POF open: unable to allocate mem\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CARD_STATE_BOOTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"POF open: DPRAM test failure\00", align 1
@ERR_BOARD_DPRAM = common dso_local global i32 0, align 4
@CARD_STATE_BOOTERR = common dso_local global i32 0, align 4
@POF_READ_FILE_HEAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"POF open: success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pof_write_open(%struct.TYPE_8__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.boot_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = load %struct.boot_data*, %struct.boot_data** %8, align 8
  %10 = icmp ne %struct.boot_data* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @LOG_POF_OPEN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = call i32 @hysdn_addlog(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* @ERR_ALREADY_BOOT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %103

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.boot_data* @kzalloc(i32 32, i32 %25)
  store %struct.boot_data* %26, %struct.boot_data** %6, align 8
  %27 = icmp ne %struct.boot_data* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LOG_MEM_ERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i32 @hysdn_addlog(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %103

41:                                               ; preds = %24
  %42 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store %struct.boot_data* %42, %struct.boot_data** %44, align 8
  %45 = load i32, i32* @CARD_STATE_BOOTING, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i32 %50(%struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i64 %55(%struct.TYPE_8__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %41
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LOG_POF_OPEN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i32 @hysdn_addlog(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* @ERR_BOARD_DPRAM, align 4
  %71 = sub nsw i32 0, %70
  %72 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %73 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @CARD_STATE_BOOTERR, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %78 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %103

80:                                               ; preds = %41
  %81 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %82 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @POF_READ_FILE_HEAD, align 4
  %84 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %85 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %87 = call i32 @StartDecryption(%struct.boot_data* %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LOG_POF_OPEN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = call i32 @hysdn_addlog(%struct.TYPE_8__* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %80
  %98 = load %struct.boot_data*, %struct.boot_data** %6, align 8
  %99 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %5, align 8
  store i8* %101, i8** %102, align 8
  store i32 4, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %69, %38, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @hysdn_addlog(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.boot_data* @kzalloc(i32, i32) #1

declare dso_local i32 @StartDecryption(%struct.boot_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
