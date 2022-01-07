; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_mws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i8, %struct.TYPE_4__, i32, %struct.idt_ntb_peer*, i8*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.idt_ntb_peer = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to scan mws of local port %hhu\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to scan mws of port %hhu\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Outbound and inbound MWs initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*)* @idt_init_mws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_init_mws(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca %struct.idt_ntb_peer*, align 8
  %5 = alloca i8, align 1
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  %6 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %7 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %8 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %10, i32 0, i32 6
  %12 = call i8* @idt_scan_mws(%struct.idt_ntb_dev* %6, i32 %9, i32* %11)
  %13 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %14 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %16 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %31 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @PTR_ERR(i8* %32)
  store i32 %33, i32* %2, align 4
  br label %92

34:                                               ; preds = %1
  store i8 0, i8* %5, align 1
  br label %35

35:                                               ; preds = %79, %34
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %39 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 8
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %35
  %44 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %45 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %44, i32 0, i32 3
  %46 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %45, align 8
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %46, i64 %48
  store %struct.idt_ntb_peer* %49, %struct.idt_ntb_peer** %4, align 8
  %50 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %51 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %4, align 8
  %52 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %4, align 8
  %55 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %54, i32 0, i32 2
  %56 = call i8* @idt_scan_mws(%struct.idt_ntb_dev* %50, i32 %53, i32* %55)
  %57 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %4, align 8
  %58 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %4, align 8
  %60 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %43
  %65 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %66 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %4, align 8
  %71 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.idt_ntb_peer*, %struct.idt_ntb_peer** %4, align 8
  %75 = getelementptr inbounds %struct.idt_ntb_peer, %struct.idt_ntb_peer* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %2, align 4
  br label %92

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78
  %80 = load i8, i8* %5, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %5, align 1
  br label %35

82:                                               ; preds = %35
  %83 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %84 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %83, i32 0, i32 2
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %87 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %82, %64, %20
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @idt_scan_mws(%struct.idt_ntb_dev*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
