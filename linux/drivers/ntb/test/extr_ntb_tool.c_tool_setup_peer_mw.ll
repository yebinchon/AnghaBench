; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_setup_peer_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_setup_peer_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.TYPE_2__*, %struct.tool_mw* }
%struct.TYPE_2__ = type { i32 }
%struct.tool_mw = type { i64, i32, i32, i32, i32* }

@TOOL_BUF_LEN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"peer_mw%d\00", align 1
@tool_peer_mw_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*, i32, i32, i32, i64)* @tool_setup_peer_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_setup_peer_mw(%struct.tool_ctx* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tool_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tool_mw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load %struct.tool_ctx*, %struct.tool_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %19, i32 0, i32 2
  %21 = load %struct.tool_mw*, %struct.tool_mw** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %21, i64 %23
  store %struct.tool_mw* %24, %struct.tool_mw** %12, align 8
  %25 = load i32, i32* @TOOL_BUF_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %30 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %103

34:                                               ; preds = %5
  %35 = load %struct.tool_ctx*, %struct.tool_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ntb_peer_mw_get_addr(i32 %37, i32 %38, i32* %14, i32* %13)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %103

44:                                               ; preds = %34
  %45 = load %struct.tool_ctx*, %struct.tool_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @ntb_peer_mw_set_trans(i32 %47, i32 %48, i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %103

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32* @ioremap_wc(i32 %58, i32 %59)
  %61 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %62 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %64 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %17, align 4
  br label %95

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %73 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %76 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %79 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = trunc i64 %26 to i32
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @snprintf(i8* %28, i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.tool_ctx*, %struct.tool_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %92 = call i32 @debugfs_create_file(i8* %28, i32 384, i32 %90, %struct.tool_mw* %91, i32* @tool_peer_mw_fops)
  %93 = load %struct.tool_mw*, %struct.tool_mw** %12, align 8
  %94 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %103

95:                                               ; preds = %67
  %96 = load %struct.tool_ctx*, %struct.tool_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @ntb_peer_mw_clear_trans(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %103

103:                                              ; preds = %95, %70, %55, %42, %33
  %104 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntb_peer_mw_get_addr(i32, i32, i32*, i32*) #2

declare dso_local i32 @ntb_peer_mw_set_trans(i32, i32, i32, i32, i64) #2

declare dso_local i32* @ioremap_wc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.tool_mw*, i32*) #2

declare dso_local i32 @ntb_peer_mw_clear_trans(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
