; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_convert_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_convert_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl_fw_status = type { i32*, i8*, %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.wl18xx_fw_status = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i8*, %struct.wl_fw_status*)* @wl18xx_convert_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_convert_fw_status(%struct.wl1271* %0, i8* %1, %struct.wl_fw_status* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wl_fw_status*, align 8
  %7 = alloca %struct.wl18xx_fw_status*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wl_fw_status* %2, %struct.wl_fw_status** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.wl18xx_fw_status*
  store %struct.wl18xx_fw_status* %9, %struct.wl18xx_fw_status** %7, align 8
  %10 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %11 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le32_to_cpu(i32 %12)
  %14 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %15 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %14, i32 0, i32 12
  store i8* %13, i8** %15, align 8
  %16 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %17 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %20 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %22 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %25 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %27 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %30 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %32 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %35 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %37 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %41 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %43 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %47 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %49 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %53 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %55 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %59 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %61 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %65 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %67 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %71 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 4
  %73 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %74 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %78 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 8
  %80 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %81 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %85 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %88 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %92 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %95 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %99 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %102 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %106 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %109 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %113 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.wl18xx_fw_status*, %struct.wl18xx_fw_status** %7, align 8
  %115 = getelementptr inbounds %struct.wl18xx_fw_status, %struct.wl18xx_fw_status* %114, i32 0, i32 0
  %116 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %117 = getelementptr inbounds %struct.wl_fw_status, %struct.wl_fw_status* %116, i32 0, i32 0
  store i32* %115, i32** %117, align 8
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
