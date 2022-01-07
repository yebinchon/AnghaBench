; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_ie_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_ie_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_ie_hdr* @uwb_ie_next(i8** %0, i64* %1) #0 {
  %3 = alloca %struct.uwb_ie_hdr*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.uwb_ie_hdr*, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.uwb_ie_hdr* null, %struct.uwb_ie_hdr** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.uwb_ie_hdr*
  store %struct.uwb_ie_hdr* %15, %struct.uwb_ie_hdr** %6, align 8
  %16 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store %struct.uwb_ie_hdr* null, %struct.uwb_ie_hdr** %3, align 8
  br label %36

26:                                               ; preds = %12
  %27 = load i64, i64* %7, align 8
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr i8, i8* %29, i64 %27
  store i8* %30, i8** %28, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %6, align 8
  store %struct.uwb_ie_hdr* %35, %struct.uwb_ie_hdr** %3, align 8
  br label %36

36:                                               ; preds = %26, %25, %11
  %37 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %3, align 8
  ret %struct.uwb_ie_hdr* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
