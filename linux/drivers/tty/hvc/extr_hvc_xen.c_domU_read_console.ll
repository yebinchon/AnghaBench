; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_domU_read_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_domU_read_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_interface = type { i32, i32, i8* }
%struct.xencons_info = type { %struct.xencons_interface* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @domU_read_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domU_read_console(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xencons_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xencons_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.xencons_info* @vtermno_to_xencons(i32 %13)
  store %struct.xencons_info* %14, %struct.xencons_info** %12, align 8
  %15 = load %struct.xencons_info*, %struct.xencons_info** %12, align 8
  %16 = icmp eq %struct.xencons_info* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.xencons_info*, %struct.xencons_info** %12, align 8
  %22 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %21, i32 0, i32 0
  %23 = load %struct.xencons_interface*, %struct.xencons_interface** %22, align 8
  store %struct.xencons_interface* %23, %struct.xencons_interface** %8, align 8
  %24 = load %struct.xencons_interface*, %struct.xencons_interface** %8, align 8
  %25 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.xencons_interface*, %struct.xencons_interface** %8, align 8
  %28 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = call i32 (...) @mb()
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %34, 8
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  br label %38

38:                                               ; preds = %48, %20
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %65

48:                                               ; preds = %46
  %49 = load %struct.xencons_interface*, %struct.xencons_interface** %8, align 8
  %50 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load %struct.xencons_interface*, %struct.xencons_interface** %8, align 8
  %55 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @MASK_XENCONS_IDX(i32 %52, i8* %56)
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 %59, i8* %64, align 1
  br label %38

65:                                               ; preds = %46
  %66 = call i32 (...) @mb()
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.xencons_interface*, %struct.xencons_interface** %8, align 8
  %69 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.xencons_info*, %struct.xencons_info** %12, align 8
  %71 = call i32 @notify_daemon(%struct.xencons_info* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.xencons_info* @vtermno_to_xencons(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MASK_XENCONS_IDX(i32, i8*) #1

declare dso_local i32 @notify_daemon(%struct.xencons_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
