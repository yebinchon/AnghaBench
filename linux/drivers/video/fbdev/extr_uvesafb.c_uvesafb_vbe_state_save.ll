; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_state_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_state_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_par = type { i64 }
%struct.uvesafb_ktask = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TF_BUF_RET = common dso_local global i32 0, align 4
@TF_BUF_ESBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"VBE get state call failed (eax=0x%x, err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.uvesafb_par*)* @uvesafb_vbe_state_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @uvesafb_vbe_state_save(%struct.uvesafb_par* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.uvesafb_par*, align 8
  %4 = alloca %struct.uvesafb_ktask*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.uvesafb_par* %0, %struct.uvesafb_par** %3, align 8
  %7 = load %struct.uvesafb_par*, %struct.uvesafb_par** %3, align 8
  %8 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %85

12:                                               ; preds = %1
  %13 = load %struct.uvesafb_par*, %struct.uvesafb_par** %3, align 8
  %14 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i64 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32* @ERR_PTR(i32 %22)
  store i32* %23, i32** %2, align 8
  br label %85

24:                                               ; preds = %12
  %25 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %25, %struct.uvesafb_ktask** %4, align 8
  %26 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %27 = icmp ne %struct.uvesafb_ktask* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @kfree(i32* %29)
  store i32* null, i32** %2, align 8
  br label %85

31:                                               ; preds = %24
  %32 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %33 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 20228, i32* %35, align 4
  %36 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %37 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 15, i32* %39, align 4
  %40 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %41 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @TF_BUF_RET, align 4
  %45 = load i32, i32* @TF_BUF_ESBX, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %48 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.uvesafb_par*, %struct.uvesafb_par** %3, align 8
  %51 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %54 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 %52, i64* %55, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %58 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %60 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %31
  %64 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %65 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 65535
  %70 = icmp ne i32 %69, 79
  br i1 %70, label %71, label %81

71:                                               ; preds = %63, %31
  %72 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %73 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @kfree(i32* %79)
  store i32* null, i32** %5, align 8
  br label %81

81:                                               ; preds = %71, %63
  %82 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %83 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %82)
  %84 = load i32*, i32** %5, align 8
  store i32* %84, i32** %2, align 8
  br label %85

85:                                               ; preds = %81, %28, %20, %11
  %86 = load i32*, i32** %2, align 8
  ret i32* %86
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
