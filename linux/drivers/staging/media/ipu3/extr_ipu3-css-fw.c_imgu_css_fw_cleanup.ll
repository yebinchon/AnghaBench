; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { i32*, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.imgu_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imgu_css_fw_cleanup(%struct.imgu_css* %0) #0 {
  %2 = alloca %struct.imgu_css*, align 8
  %3 = alloca %struct.imgu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %2, align 8
  %5 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %6 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.imgu_device* @dev_get_drvdata(i32 %7)
  store %struct.imgu_device* %8, %struct.imgu_device** %3, align 8
  %9 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %10 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %17 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %15, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %25 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %26 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @imgu_dmamap_free(%struct.imgu_device* %24, i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %37 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  br label %40

40:                                               ; preds = %35, %1
  %41 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %42 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %47 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @release_firmware(i32* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %52 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %54 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  ret void
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_dmamap_free(%struct.imgu_device*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
