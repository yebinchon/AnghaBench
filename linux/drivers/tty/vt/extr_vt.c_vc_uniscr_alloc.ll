; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_screen = type { i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uni_screen* (i32, i32)* @vc_uniscr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uni_screen* @vc_uniscr_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.uni_screen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_screen*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store %struct.uni_screen* null, %struct.uni_screen** %3, align 8
  br label %61

29:                                               ; preds = %2
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.uni_screen*
  store %struct.uni_screen* %31, %struct.uni_screen** %6, align 8
  %32 = load %struct.uni_screen*, %struct.uni_screen** %6, align 8
  %33 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = bitcast i8** %37 to i8*
  store i8* %38, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %56, %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.uni_screen*, %struct.uni_screen** %6, align 8
  %46 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr i8, i8* %54, i64 %53
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.uni_screen*, %struct.uni_screen** %6, align 8
  store %struct.uni_screen* %60, %struct.uni_screen** %3, align 8
  br label %61

61:                                               ; preds = %59, %28
  %62 = load %struct.uni_screen*, %struct.uni_screen** %3, align 8
  ret %struct.uni_screen* %62
}

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
