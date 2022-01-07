; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i8*, i8*, i8* }

@ESB_ST_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*, i8*, i8*)* @fc_exch_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_set_addr(%struct.fc_exch* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.fc_exch* %0, %struct.fc_exch** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %9 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %11 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ESB_ST_RESP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %19 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %26 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %29 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
