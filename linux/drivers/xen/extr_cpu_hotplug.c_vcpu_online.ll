; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_cpu_hotplug.c_vcpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_cpu_hotplug.c_vcpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"cpu/%u\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"availability\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to read cpu state\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"unknown state(%s) on CPU%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vcpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @XBT_NIL, align 4
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %13 = call i32 @xenbus_scanf(i32 %10, i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = call i32 (...) @xen_initial_domain()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %40

28:                                               ; preds = %23
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %32, %27, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @xenbus_scanf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @xen_initial_domain(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
