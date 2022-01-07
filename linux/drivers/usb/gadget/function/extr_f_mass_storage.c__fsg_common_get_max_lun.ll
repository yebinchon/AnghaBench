; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c__fsg_common_get_max_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c__fsg_common_get_max_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @_fsg_common_get_max_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fsg_common_get_max_lun(%struct.fsg_common* %0) #0 {
  %2 = alloca %struct.fsg_common*, align 8
  %3 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %2, align 8
  %4 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %5 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %14 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %12, %9
  %23 = phi i1 [ false, %9 ], [ %21, %12 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
