; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_set_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_set_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32, i32 }

@cm_setv = common dso_local global i8** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error writing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*, i32, i32)* @set_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_acpi(%struct.eeepc_laptop* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeepc_laptop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8**, i8*** @cm_setv, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %21 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %32 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @write_acpi_int(i32 %33, i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %30
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %27, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @write_acpi_int(i32, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
