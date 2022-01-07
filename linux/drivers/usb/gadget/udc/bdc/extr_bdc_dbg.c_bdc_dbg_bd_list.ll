; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dbg_bd_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dbg_bd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32 }
%struct.bdc_ep = type { i32, i32, %struct.bd_list }
%struct.bd_list = type { i32, i32, %struct.bd_table**, i32, i32, i32 }
%struct.bd_table = type { i64, %struct.bdc_bd* }
%struct.bdc_bd = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"Dump bd list for %s epnum:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"tabs:%d max_bdi:%d eqp_bdi:%d hwd_bdi:%d num_bds_table:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"tbi:%2d bdi:%2d gbdi:%2d virt:%p phys:%llx %08x %08x %08x %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdc_dbg_bd_list(%struct.bdc* %0, %struct.bdc_ep* %1) #0 {
  %3 = alloca %struct.bdc*, align 8
  %4 = alloca %struct.bdc_ep*, align 8
  %5 = alloca %struct.bd_list*, align 8
  %6 = alloca %struct.bd_table*, align 8
  %7 = alloca %struct.bdc_bd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bdc* %0, %struct.bdc** %3, align 8
  store %struct.bdc_ep* %1, %struct.bdc_ep** %4, align 8
  %12 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %13 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %12, i32 0, i32 2
  store %struct.bd_list* %13, %struct.bd_list** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.bdc*, %struct.bdc** %3, align 8
  %15 = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %18 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %21 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.bdc*, %struct.bdc** %3, align 8
  %25 = getelementptr inbounds %struct.bdc, %struct.bdc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %28 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %31 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %34 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %37 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %40 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %119, %2
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %46 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %43
  %50 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %51 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %50, i32 0, i32 2
  %52 = load %struct.bd_table**, %struct.bd_table*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bd_table*, %struct.bd_table** %52, i64 %54
  %56 = load %struct.bd_table*, %struct.bd_table** %55, align 8
  store %struct.bd_table* %56, %struct.bd_table** %6, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %111, %49
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.bd_list*, %struct.bd_list** %5, align 8
  %60 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %57
  %64 = load %struct.bd_table*, %struct.bd_table** %6, align 8
  %65 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %64, i32 0, i32 1
  %66 = load %struct.bdc_bd*, %struct.bdc_bd** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.bdc_bd, %struct.bdc_bd* %66, i64 %68
  store %struct.bdc_bd* %69, %struct.bdc_bd** %7, align 8
  %70 = load %struct.bd_table*, %struct.bd_table** %6, align 8
  %71 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = add i64 %72, %75
  store i64 %76, i64* %11, align 8
  %77 = load %struct.bdc*, %struct.bdc** %3, align 8
  %78 = getelementptr inbounds %struct.bdc, %struct.bdc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load %struct.bdc_bd*, %struct.bdc_bd** %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.bdc_bd*, %struct.bdc_bd** %7, align 8
  %87 = getelementptr inbounds %struct.bdc_bd, %struct.bdc_bd* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load %struct.bdc_bd*, %struct.bdc_bd** %7, align 8
  %93 = getelementptr inbounds %struct.bdc_bd, %struct.bdc_bd* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load %struct.bdc_bd*, %struct.bdc_bd** %7, align 8
  %99 = getelementptr inbounds %struct.bdc_bd, %struct.bdc_bd* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = load %struct.bdc_bd*, %struct.bdc_bd** %7, align 8
  %105 = getelementptr inbounds %struct.bdc_bd, %struct.bdc_bd* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %79, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %82, %struct.bdc_bd* %84, i64 %85, i32 %91, i32 %97, i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %63
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %57

114:                                              ; preds = %57
  %115 = load %struct.bdc*, %struct.bdc** %3, align 8
  %116 = getelementptr inbounds %struct.bdc, %struct.bdc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %43

122:                                              ; preds = %43
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
