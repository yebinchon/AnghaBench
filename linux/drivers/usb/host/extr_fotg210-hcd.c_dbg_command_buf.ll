; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_dbg_command_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_dbg_command_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"%s%scommand %07x %s=%d ithresh=%d%s%s%s period=%s%s %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CMD_PARK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" park\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(park)\00", align 1
@CMD_IAAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" IAAD\00", align 1
@CMD_ASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" Async\00", align 1
@CMD_PSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" Periodic\00", align 1
@fls_strings = common dso_local global i32* null, align 8
@CMD_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" Reset\00", align 1
@CMD_RUN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HALT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @dbg_command_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_command_buf(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CMD_PARK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @CMD_PARK_CNT(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 63
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CMD_IAAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CMD_ASE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CMD_PSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32*, i32** @fls_strings, align 8
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 2
  %52 = and i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @CMD_RESET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @CMD_RUN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %68 = call i32 @scnprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %18, i32 %19, i8* %25, i32 %27, i32 %30, i8* %36, i8* %42, i8* %48, i32 %55, i8* %61, i8* %67)
  ret i32 %68
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @CMD_PARK_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
