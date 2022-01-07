; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla24xx_copy_eft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla24xx_copy_eft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qla_hw_data*, i8*)* @qla24xx_copy_eft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla24xx_copy_eft(%struct.qla_hw_data* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i32 @memcpy(i8* %13, i32 %16, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %24, i64 %31
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %12, %10
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
