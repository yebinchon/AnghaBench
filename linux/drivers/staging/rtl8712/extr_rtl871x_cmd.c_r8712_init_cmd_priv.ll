; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_init_cmd_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_init_cmd_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_priv = type { i32, i64, i64, i64, i8*, i8*, i32*, i32*, i32, i32, i32 }

@MAX_CMDSZ = common dso_local global i64 0, align 8
@CMDBUFF_ALIGN_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_RSPSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_init_cmd_priv(%struct.cmd_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmd_priv*, align 8
  store %struct.cmd_priv* %0, %struct.cmd_priv** %3, align 8
  %4 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %5 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %4, i32 0, i32 10
  %6 = call i32 @init_completion(i32* %5)
  %7 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %7, i32 0, i32 9
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %11 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %10, i32 0, i32 8
  %12 = call i32 @_init_queue(i32* %11)
  %13 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %14 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i64, i64* @MAX_CMDSZ, align 8
  %16 = load i32, i32* @CMDBUFF_ALIGN_SZ, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i8* @kmalloc(i64 %18, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %23 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %22, i32 0, i32 6
  store i32* %21, i32** %23, align 8
  %24 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %25 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %90

31:                                               ; preds = %1
  %32 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %33 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @CMDBUFF_ALIGN_SZ, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %39 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = load i32, i32* @CMDBUFF_ALIGN_SZ, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %37, i64 %46
  %48 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %49 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %48, i32 0, i32 7
  store i32* %47, i32** %49, align 8
  %50 = load i64, i64* @MAX_RSPSZ, align 8
  %51 = add nsw i64 %50, 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i8* @kmalloc(i64 %51, i32 %52)
  %54 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %55 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %57 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %31
  %61 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %62 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %66 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %65, i32 0, i32 6
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %90

69:                                               ; preds = %31
  %70 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %71 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr i8, i8* %72, i64 4
  %74 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %75 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = and i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr i8, i8* %73, i64 %80
  %82 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %83 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %85 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %87 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %89 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %69, %60, %28
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @_init_queue(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
