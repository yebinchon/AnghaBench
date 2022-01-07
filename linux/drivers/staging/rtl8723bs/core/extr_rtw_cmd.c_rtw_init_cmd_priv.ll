; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_init_cmd_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_init_cmd_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_priv = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i32, i32, i32 }

@MAX_CMDSZ = common dso_local global i64 0, align 8
@CMDBUFF_ALIGN_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_RSPSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_init_cmd_priv(%struct.cmd_priv* %0) #0 {
  %2 = alloca %struct.cmd_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.cmd_priv* %0, %struct.cmd_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %5 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %4, i32 0, i32 11
  %6 = call i32 @init_completion(i32* %5)
  %7 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %8 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %7, i32 0, i32 10
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %11 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %10, i32 0, i32 9
  %12 = call i32 @_rtw_init_queue(i32* %11)
  %13 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %14 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i64, i64* @MAX_CMDSZ, align 8
  %16 = load i32, i32* @CMDBUFF_ALIGN_SZ, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i8* @rtw_zmalloc(i64 %18)
  %20 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %21 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %23 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %22, i32 0, i32 7
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %1
  %30 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %31 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %30, i32 0, i32 7
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @CMDBUFF_ALIGN_SZ, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %37 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %36, i32 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32, i32* @CMDBUFF_ALIGN_SZ, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr i8, i8* %35, i64 %44
  %46 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %47 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @MAX_RSPSZ, align 8
  %49 = add nsw i64 %48, 4
  %50 = call i8* @rtw_zmalloc(i64 %49)
  %51 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %52 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %54 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %29
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %84

60:                                               ; preds = %29
  %61 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %62 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr i8, i8* %63, i64 4
  %65 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %66 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = and i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr i8, i8* %64, i64 %71
  %73 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %74 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %76 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %78 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %80 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %82 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %81, i32 0, i32 1
  %83 = call i32 @mutex_init(i32* %82)
  br label %84

84:                                               ; preds = %60, %57, %26
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @_rtw_init_queue(i32*) #1

declare dso_local i8* @rtw_zmalloc(i64) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
