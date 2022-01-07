; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_correct_endian_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_correct_endian_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header_basic = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_header_basic*, i32)* @correct_endian_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_endian_basic(%struct.usbip_header_basic* %0, i32 %1) #0 {
  %3 = alloca %struct.usbip_header_basic*, align 8
  %4 = alloca i32, align 4
  store %struct.usbip_header_basic* %0, %struct.usbip_header_basic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %9 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @cpu_to_be32(i8* %10)
  %12 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %13 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %15 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @cpu_to_be32(i8* %16)
  %18 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %19 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %21 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @cpu_to_be32(i8* %22)
  %24 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %25 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %27 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @cpu_to_be32(i8* %28)
  %30 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %31 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %33 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @cpu_to_be32(i8* %34)
  %36 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %37 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %69

38:                                               ; preds = %2
  %39 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %40 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @be32_to_cpu(i8* %41)
  %43 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %44 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %46 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @be32_to_cpu(i8* %47)
  %49 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %50 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %52 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @be32_to_cpu(i8* %53)
  %55 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %56 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %58 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @be32_to_cpu(i8* %59)
  %61 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %62 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %64 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @be32_to_cpu(i8* %65)
  %67 = load %struct.usbip_header_basic*, %struct.usbip_header_basic** %3, align 8
  %68 = getelementptr inbounds %struct.usbip_header_basic, %struct.usbip_header_basic* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %38, %7
  ret void
}

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
