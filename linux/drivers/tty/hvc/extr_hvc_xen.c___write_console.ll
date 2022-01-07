; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c___write_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c___write_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_info = type { %struct.xencons_interface* }
%struct.xencons_interface = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xencons_info*, i8*, i32)* @__write_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_console(%struct.xencons_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.xencons_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xencons_interface*, align 8
  %10 = alloca i32, align 4
  store %struct.xencons_info* %0, %struct.xencons_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.xencons_info*, %struct.xencons_info** %4, align 8
  %12 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %11, i32 0, i32 0
  %13 = load %struct.xencons_interface*, %struct.xencons_interface** %12, align 8
  store %struct.xencons_interface* %13, %struct.xencons_interface** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.xencons_interface*, %struct.xencons_interface** %9, align 8
  %15 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.xencons_interface*, %struct.xencons_interface** %9, align 8
  %18 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = call i32 (...) @mb()
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 8
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  br label %28

28:                                               ; preds = %40, %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 8
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %57

40:                                               ; preds = %38
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load %struct.xencons_interface*, %struct.xencons_interface** %9, align 8
  %48 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load %struct.xencons_interface*, %struct.xencons_interface** %9, align 8
  %53 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @MASK_XENCONS_IDX(i32 %50, i8* %54)
  %56 = getelementptr inbounds i8, i8* %49, i64 %55
  store i8 %46, i8* %56, align 1
  br label %28

57:                                               ; preds = %38
  %58 = call i32 (...) @wmb()
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.xencons_interface*, %struct.xencons_interface** %9, align 8
  %61 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.xencons_info*, %struct.xencons_info** %4, align 8
  %66 = call i32 @notify_daemon(%struct.xencons_info* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MASK_XENCONS_IDX(i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @notify_daemon(%struct.xencons_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
