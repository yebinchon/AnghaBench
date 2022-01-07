; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_mbox_cmd_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_mbox_cmd_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mbox_priv = type { i32*, i32, %struct.anybus_mbox_hdr }
%struct.anybus_mbox_hdr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"mailbox command failed:\00", align 1
@EMSGS = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"   Error code: %s (0x%02X)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"   Error code: 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Failed command:\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Message Header:\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%02X%02X\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Message Data:\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Stack dump:\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mbox_priv*)* @mbox_cmd_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbox_cmd_err(%struct.device* %0, %struct.mbox_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mbox_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anybus_mbox_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mbox_priv* %1, %struct.mbox_priv** %5, align 8
  %12 = load %struct.mbox_priv*, %struct.mbox_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %12, i32 0, i32 2
  store %struct.anybus_mbox_hdr* %13, %struct.anybus_mbox_hdr** %8, align 8
  %14 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %8, align 8
  %15 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be16_to_cpu(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %8, align 8
  %19 = bitcast %struct.anybus_mbox_hdr* %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load %struct.mbox_priv*, %struct.mbox_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 32768
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 15
  store i32 %30, i32* %7, align 4
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 15
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %8, align 8
  %38 = call i32 @log_invalid_other(%struct.device* %36, %struct.anybus_mbox_hdr* %37)
  br label %58

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** @EMSGS, align 8
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32*, i32** @EMSGS, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %57

53:                                               ; preds = %39
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %81, %58
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %6, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %107, %84
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.mbox_priv*, %struct.mbox_priv** %5, align 8
  %90 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %105)
  br label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %6, align 4
  br label %87

110:                                              ; preds = %87
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i32 (...) @dump_stack()
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %26
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @log_invalid_other(%struct.device*, %struct.anybus_mbox_hdr*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
