; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_s390_vary_chpid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_s390_vary_chpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"varyon%x.%02x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"varyoff%x.%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @s390_vary_chpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_vary_chpid(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chp_id, align 4
  %5 = alloca i32, align 4
  %6 = alloca [15 x i8], align 1
  %7 = alloca i32, align 4
  %8 = bitcast %struct.chp_id* %4 to i64*
  store i64 %0, i64* %8, align 4
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)
  %14 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sprintf(i8* %9, i8* %13, i32 %15, i32 %17)
  %19 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %20 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %19)
  %21 = bitcast %struct.chp_id* %4 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @chp_get_status(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %39

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %5, align 4
  %32 = bitcast %struct.chp_id* %4 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = call i32 @set_chp_logically_online(i64 %33, i32 %31)
  %35 = load i32, i32* %5, align 4
  %36 = bitcast %struct.chp_id* %4 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i32 @chsc_chp_vary(i64 %37, i32 %35)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @chp_get_status(i64) #1

declare dso_local i32 @set_chp_logically_online(i64, i32) #1

declare dso_local i32 @chsc_chp_vary(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
