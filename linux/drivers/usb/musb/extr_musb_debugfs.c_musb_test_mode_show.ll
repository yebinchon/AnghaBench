; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_debugfs.c_musb_test_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_debugfs.c_musb_test_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.musb* }
%struct.musb = type { i32, i32 }

@MUSB_TESTMODE = common dso_local global i32 0, align 4
@MUSB_TEST_FORCE_HOST = common dso_local global i32 0, align 4
@MUSB_TEST_FORCE_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"force host full-speed\0A\00", align 1
@MUSB_TEST_FORCE_HS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"force host high-speed\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"force host\0A\00", align 1
@MUSB_TEST_FIFO_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"fifo access\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"force full-speed\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"force high-speed\0A\00", align 1
@MUSB_TEST_PACKET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"test packet\0A\00", align 1
@MUSB_TEST_K = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"test K\0A\00", align 1
@MUSB_TEST_J = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"test J\0A\00", align 1
@MUSB_TEST_SE0_NAK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"test SE0 NAK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @musb_test_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_test_mode_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.musb*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.musb*, %struct.musb** %8, align 8
  store %struct.musb* %9, %struct.musb** %5, align 8
  %10 = load %struct.musb*, %struct.musb** %5, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.musb*, %struct.musb** %5, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MUSB_TESTMODE, align 4
  %18 = call i32 @musb_readb(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.musb*, %struct.musb** %5, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_mark_last_busy(i32 %21)
  %23 = load %struct.musb*, %struct.musb** %5, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_put_autosuspend(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MUSB_TEST_FORCE_HOST, align 4
  %29 = load i32, i32* @MUSB_TEST_FORCE_FS, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %109

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MUSB_TEST_FORCE_HOST, align 4
  %38 = load i32, i32* @MUSB_TEST_FORCE_HS, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %108

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MUSB_TEST_FORCE_HOST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %107

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MUSB_TEST_FIFO_ACCESS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %106

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MUSB_TEST_FORCE_FS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %105

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MUSB_TEST_FORCE_HS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = call i32 @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %104

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @MUSB_TEST_PACKET, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %103

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @MUSB_TEST_K, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = call i32 @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %102

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MUSB_TEST_J, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = call i32 @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %101

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @MUSB_TEST_SE0_NAK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %76
  br label %104

104:                                              ; preds = %103, %69
  br label %105

105:                                              ; preds = %104, %62
  br label %106

106:                                              ; preds = %105, %55
  br label %107

107:                                              ; preds = %106, %48
  br label %108

108:                                              ; preds = %107, %41
  br label %109

109:                                              ; preds = %108, %32
  ret i32 0
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
