; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_opts_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_opts_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%10s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@sdebug_opts = common dso_local global i32 0, align 4
@SDEBUG_OPT_NOISE = common dso_local global i32 0, align 4
@sdebug_verbose = common dso_local global i32 0, align 4
@SDEBUG_OPT_ALL_INJECTING = common dso_local global i32 0, align 4
@sdebug_any_injecting_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @opts_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opts_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %12 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %16 = call i64 @strncasecmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = call i64 @kstrtoint(i8* %20, i32 16, i32* %8)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %14
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %27 = call i64 @kstrtoint(i8* %26, i32 10, i32* %8)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %35

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %53

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* @sdebug_opts, align 4
  %37 = load i32, i32* @SDEBUG_OPT_NOISE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* @sdebug_verbose, align 4
  %44 = load i32, i32* @SDEBUG_OPT_ALL_INJECTING, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* @sdebug_any_injecting_opt, align 4
  %51 = call i32 (...) @tweak_cmnd_count()
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %35, %32
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @tweak_cmnd_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
