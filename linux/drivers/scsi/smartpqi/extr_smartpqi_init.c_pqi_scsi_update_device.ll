; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_scsi_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_scsi_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_scsi_dev = type { i32, i32, i32*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_scsi_dev*, %struct.pqi_scsi_dev*)* @pqi_scsi_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_scsi_update_device(%struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_scsi_dev*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %5 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %6 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %5, i32 0, i32 29
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %8, i32 0, i32 29
  store i32 %7, i32* %9, align 4
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %10, i32 0, i32 28
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %13, i32 0, i32 28
  store i32 %12, i32* %14, align 8
  %15 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %15, i32 0, i32 27
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %18, i32 0, i32 27
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %25, i32 0, i32 26
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %28, i32 0, i32 26
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %30, i32 0, i32 25
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %33, i32 0, i32 25
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %24, %2
  %38 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %38, i32 0, i32 24
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %41, i32 0, i32 24
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %43, i32 0, i32 23
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %46, i32 0, i32 23
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %48, i32 0, i32 22
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %52 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %51, i32 0, i32 22
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %53, i32 0, i32 21
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %57 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %56, i32 0, i32 21
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %58, i32 0, i32 20
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %61, i32 0, i32 20
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memcpy(i32 %60, i32 %63, i32 4)
  %65 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %65, i32 0, i32 19
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %68, i32 0, i32 19
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %67, i32 %70, i32 4)
  %72 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %72, i32 0, i32 18
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %76 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %75, i32 0, i32 18
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %80, i32 0, i32 17
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %83 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %85, i32 0, i32 16
  store i32 %84, i32* %86, align 8
  %87 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %91 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %90, i32 0, i32 15
  store i32 %89, i32* %91, align 4
  %92 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %96 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %95, i32 0, i32 14
  store i32 %94, i32* %96, align 8
  %97 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %101 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %106 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 8
  %107 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %111 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 4
  %112 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %116 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %121 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %126 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %128 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %131 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy(i32 %129, i32 %132, i32 4)
  %134 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %135 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memcpy(i32 %136, i32 %139, i32 4)
  %141 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %142 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %141, i32 0, i32 5
  store i64 0, i64* %142, align 8
  %143 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %144 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %148 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %151 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %150, i32 0, i32 2
  store i32* %149, i32** %151, align 8
  %152 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %153 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %156 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %158 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %161 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %163 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %165 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %164, i32 0, i32 2
  store i32* null, i32** %165, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
