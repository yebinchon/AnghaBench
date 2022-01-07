; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_rc_ie_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_rc_ie_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32, i32 }
%struct.uwb_ie_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_ie_add(%struct.uwb_rc* %0, %struct.uwb_ie_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_ie_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uwb_ie_hdr*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_ie_hdr* %1, %struct.uwb_ie_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %11 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %14 = bitcast %struct.uwb_ie_hdr* %13 to i8*
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %27, %3
  %16 = call %struct.uwb_ie_hdr* @uwb_ie_next(i8** %8, i64* %6)
  store %struct.uwb_ie_hdr* %16, %struct.uwb_ie_hdr** %9, align 8
  %17 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %18 = icmp ne %struct.uwb_ie_hdr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %28

20:                                               ; preds = %15
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %22 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %23 = call i32 @uwb_rc_ie_add_one(%struct.uwb_rc* %21, %struct.uwb_ie_hdr* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %28

27:                                               ; preds = %20
  br label %15

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %42 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @uwb_rc_set_ie(%struct.uwb_rc* %40, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %34
  br label %49

46:                                               ; preds = %31
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %45
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %52 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uwb_ie_hdr* @uwb_ie_next(i8**, i64*) #1

declare dso_local i32 @uwb_rc_ie_add_one(%struct.uwb_rc*, %struct.uwb_ie_hdr*) #1

declare dso_local i32 @uwb_rc_set_ie(%struct.uwb_rc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
