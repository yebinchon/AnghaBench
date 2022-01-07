; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32, i32*)* @split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @split(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @count_strings(i8* %10, i32 %11)
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = load i32, i32* @__GFP_HIGH, align 4
  %24 = or i32 %22, %23
  %25 = call i8** @kmalloc(i32 %21, i32 %24)
  store i8** %25, i8*** %9, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @kfree(i8* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i8** @ERR_PTR(i32 %32)
  store i8** %33, i8*** %4, align 8
  br label %76

34:                                               ; preds = %3
  %35 = load i8**, i8*** %9, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @memcpy(i8** %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @kfree(i8* %43)
  %45 = load i8**, i8*** %9, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = bitcast i8** %49 to i8*
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %8, align 8
  %52 = load i32*, i32** %7, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %68, %34
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = icmp ult i8* %54, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %62, i64 %66
  store i8* %61, i8** %67, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add nsw i64 %70, 1
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %8, align 8
  br label %53

74:                                               ; preds = %53
  %75 = load i8**, i8*** %9, align 8
  store i8** %75, i8*** %4, align 8
  br label %76

76:                                               ; preds = %74, %28
  %77 = load i8**, i8*** %4, align 8
  ret i8** %77
}

declare dso_local i32 @count_strings(i8*, i32) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8** @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
