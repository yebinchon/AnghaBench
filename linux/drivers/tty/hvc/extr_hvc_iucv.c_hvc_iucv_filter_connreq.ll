; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_filter_connreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_filter_connreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hvc_iucv_filter_size = common dso_local global i64 0, align 8
@hvc_iucv_filter = common dso_local global i8* null, align 8
@FILTER_WILDCARD_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hvc_iucv_filter_connreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_iucv_filter_connreq(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i64, i64* @hvc_iucv_filter_size, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %42, %11
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @hvc_iucv_filter_size, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i8*, i8** @hvc_iucv_filter, align 8
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 8, %18
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @FILTER_WILDCARD_CHAR, align 4
  %23 = call i8* @strnchr(i8* %21, i32 8, i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i64 [ %31, %26 ], [ 8, %32 ]
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @memcmp(i32* %35, i8* %36, i64 %37)
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %12

45:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @strnchr(i8*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
