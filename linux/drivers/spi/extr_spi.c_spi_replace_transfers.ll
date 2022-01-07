; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_replace_transfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_replace_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_replaced_transfers = type { i64, %struct.TYPE_6__*, %struct.spi_transfer*, i32, %struct.spi_transfer*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.spi_message = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.spi_transfer = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@__spi_replace_transfers_release = common dso_local global i32 0, align 4
@inserted_transfers = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"requested to remove more spi_transfers than are available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_replaced_transfers* @spi_replace_transfers(%struct.spi_message* %0, %struct.spi_transfer* %1, i64 %2, i64 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.spi_replaced_transfers*, align 8
  %9 = alloca %struct.spi_message*, align 8
  %10 = alloca %struct.spi_transfer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.spi_replaced_transfers*, align 8
  %17 = alloca %struct.spi_transfer*, align 8
  %18 = alloca i64, align 8
  store %struct.spi_message* %0, %struct.spi_message** %9, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %20 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* @__spi_replace_transfers_release, align 4
  %23 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %24 = load i32, i32* @inserted_transfers, align 4
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @struct_size(%struct.spi_replaced_transfers* %23, i32 %24, i64 %25)
  %27 = load i64, i64* %14, align 8
  %28 = add i64 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.spi_replaced_transfers* @spi_res_alloc(%struct.TYPE_5__* %21, i32 %22, i64 %28, i32 %29)
  store %struct.spi_replaced_transfers* %30, %struct.spi_replaced_transfers** %16, align 8
  %31 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %32 = icmp ne %struct.spi_replaced_transfers* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.spi_replaced_transfers* @ERR_PTR(i32 %35)
  store %struct.spi_replaced_transfers* %36, %struct.spi_replaced_transfers** %8, align 8
  br label %145

37:                                               ; preds = %7
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %40 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %45 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %44, i32 0, i32 2
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i64 %47
  %49 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %50 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %49, i32 0, i32 4
  store %struct.spi_transfer* %48, %struct.spi_transfer** %50, align 8
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %53 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %56 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %60 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %59, i32 0, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  store i64 0, i64* %18, align 8
  br label %61

61:                                               ; preds = %100, %51
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %67 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %72 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %71, i32 0, i32 1
  %73 = icmp eq i32* %70, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %65
  %75 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %76 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %81 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %80, i32 0, i32 3
  %82 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %83 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @list_splice(i32* %81, %struct.TYPE_6__* %84)
  %86 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %87 = call i32 @spi_res_free(%struct.spi_replaced_transfers* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.spi_replaced_transfers* @ERR_PTR(i32 %89)
  store %struct.spi_replaced_transfers* %90, %struct.spi_replaced_transfers** %8, align 8
  br label %145

91:                                               ; preds = %65
  %92 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %93 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %98 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %97, i32 0, i32 3
  %99 = call i32 @list_move_tail(i32* %96, i32* %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %18, align 8
  br label %61

103:                                              ; preds = %61
  store i64 0, i64* %18, align 8
  br label %104

104:                                              ; preds = %134, %103
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %137

108:                                              ; preds = %104
  %109 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %110 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %109, i32 0, i32 2
  %111 = load %struct.spi_transfer*, %struct.spi_transfer** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = sub i64 %112, 1
  %114 = load i64, i64* %18, align 8
  %115 = sub i64 %113, %114
  %116 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %111, i64 %115
  store %struct.spi_transfer* %116, %struct.spi_transfer** %17, align 8
  %117 = load %struct.spi_transfer*, %struct.spi_transfer** %17, align 8
  %118 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %119 = call i32 @memcpy(%struct.spi_transfer* %117, %struct.spi_transfer* %118, i32 24)
  %120 = load %struct.spi_transfer*, %struct.spi_transfer** %17, align 8
  %121 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %120, i32 0, i32 2
  %122 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %123 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @list_add(%struct.TYPE_7__* %121, %struct.TYPE_6__* %124)
  %126 = load i64, i64* %18, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %108
  %129 = load %struct.spi_transfer*, %struct.spi_transfer** %17, align 8
  %130 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load %struct.spi_transfer*, %struct.spi_transfer** %17, align 8
  %132 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %108
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %18, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %18, align 8
  br label %104

137:                                              ; preds = %104
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %140 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %142 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  %143 = call i32 @spi_res_add(%struct.spi_message* %141, %struct.spi_replaced_transfers* %142)
  %144 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %16, align 8
  store %struct.spi_replaced_transfers* %144, %struct.spi_replaced_transfers** %8, align 8
  br label %145

145:                                              ; preds = %137, %74, %33
  %146 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %8, align 8
  ret %struct.spi_replaced_transfers* %146
}

declare dso_local %struct.spi_replaced_transfers* @spi_res_alloc(%struct.TYPE_5__*, i32, i64, i32) #1

declare dso_local i64 @struct_size(%struct.spi_replaced_transfers*, i32, i64) #1

declare dso_local %struct.spi_replaced_transfers* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_splice(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @spi_res_free(%struct.spi_replaced_transfers*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.spi_transfer*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @list_add(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @spi_res_add(%struct.spi_message*, %struct.spi_replaced_transfers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
