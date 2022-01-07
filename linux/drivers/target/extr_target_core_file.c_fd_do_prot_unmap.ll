; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_do_prot_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_do_prot_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to allocate FILEIO prot buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i32, i32)* @fd_do_prot_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_do_prot_unmap(%struct.se_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @__get_free_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @memset(i8* %20, i32 255, i32 %21)
  %23 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @fd_do_prot_fill(i32 %25, i32 %26, i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = call i32 @free_page(i64 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fd_do_prot_fill(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
