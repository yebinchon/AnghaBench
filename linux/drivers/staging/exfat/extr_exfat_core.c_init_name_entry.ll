; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_name_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_name_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_dentry_t = type { i32, i64 }
%struct.dentry_t = type { i32 }

@TYPE_EXTEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_name_entry(%struct.name_dentry_t* %0, i32* %1) #0 {
  %3 = alloca %struct.name_dentry_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.name_dentry_t* %0, %struct.name_dentry_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.name_dentry_t*, %struct.name_dentry_t** %3, align 8
  %7 = bitcast %struct.name_dentry_t* %6 to %struct.dentry_t*
  %8 = load i32, i32* @TYPE_EXTEND, align 4
  %9 = call i32 @exfat_set_entry_type(%struct.dentry_t* %7, i32 %8)
  %10 = load %struct.name_dentry_t*, %struct.name_dentry_t** %3, align 8
  %11 = getelementptr inbounds %struct.name_dentry_t, %struct.name_dentry_t* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 30
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load %struct.name_dentry_t*, %struct.name_dentry_t** %3, align 8
  %17 = getelementptr inbounds %struct.name_dentry_t, %struct.name_dentry_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SET16_A(i64 %21, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %37

29:                                               ; preds = %15
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %12

37:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @exfat_set_entry_type(%struct.dentry_t*, i32) #1

declare dso_local i32 @SET16_A(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
