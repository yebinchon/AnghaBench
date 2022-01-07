; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.aspeed_p2a_user* }
%struct.aspeed_p2a_user = type { %struct.aspeed_p2a_user*, i32, i64, %struct.file* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @aspeed_p2a_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_p2a_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.aspeed_p2a_user*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.aspeed_p2a_user* @kmalloc(i32 32, i32 %7)
  store %struct.aspeed_p2a_user* %8, %struct.aspeed_p2a_user** %6, align 8
  %9 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %6, align 8
  %10 = icmp ne %struct.aspeed_p2a_user* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %6, align 8
  %17 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %16, i32 0, i32 3
  store %struct.file* %15, %struct.file** %17, align 8
  %18 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %6, align 8
  %19 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %6, align 8
  %21 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memset(i32 %22, i32 0, i32 4)
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %25, align 8
  %27 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %6, align 8
  %28 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %27, i32 0, i32 0
  store %struct.aspeed_p2a_user* %26, %struct.aspeed_p2a_user** %28, align 8
  %29 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %6, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store %struct.aspeed_p2a_user* %29, %struct.aspeed_p2a_user** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %14, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.aspeed_p2a_user* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
