; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_set_bss_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_set_bss_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i64, i32*, i32 }

@RF_AIROHA7230 = common dso_local global i64 0, align 8
@BB_TYPE_11A = common dso_local global i64 0, align 8
@BB_TYPE_11G = common dso_local global i64 0, align 8
@MESSAGE_REQUEST_BBREG = common dso_local global i32 0, align 4
@BB_TYPE_11B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_set_bss_mode(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %3 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %4 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RF_AIROHA7230, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BB_TYPE_11A, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %16 = load i64, i64* @BB_TYPE_11G, align 8
  %17 = call i32 @vnt_mac_set_bb_type(%struct.vnt_private* %15, i64 %16)
  br label %24

18:                                               ; preds = %8, %1
  %19 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %20 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @vnt_mac_set_bb_type(%struct.vnt_private* %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %14
  %25 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %26 = call i32 @vnt_get_pkt_type(%struct.vnt_private* %25)
  %27 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BB_TYPE_11A, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %36 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %37 = call i32 @vnt_control_out_u8(%struct.vnt_private* %35, i32 %36, i32 136, i32 3)
  br label %60

38:                                               ; preds = %24
  %39 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BB_TYPE_11B, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %46 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %47 = call i32 @vnt_control_out_u8(%struct.vnt_private* %45, i32 %46, i32 136, i32 2)
  br label %59

48:                                               ; preds = %38
  %49 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %50 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BB_TYPE_11G, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %56 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %57 = call i32 @vnt_control_out_u8(%struct.vnt_private* %55, i32 %56, i32 136, i32 8)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %62 = call i32 @vnt_update_ifs(%struct.vnt_private* %61)
  %63 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %64 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @vnt_set_rspinf(%struct.vnt_private* %63, i32 %67)
  %69 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %70 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BB_TYPE_11A, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %60
  %75 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %76 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RF_AIROHA7230, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %82 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 32, i32* %84, align 4
  %85 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %86 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %87 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %88 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @vnt_control_out_u8(%struct.vnt_private* %85, i32 %86, i32 231, i32 %91)
  br label %93

93:                                               ; preds = %80, %74
  %94 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %95 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 16, i32* %97, align 4
  %98 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %99 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 16, i32* %101, align 4
  br label %130

102:                                              ; preds = %60
  %103 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %104 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RF_AIROHA7230, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %110 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 28, i32* %112, align 4
  %113 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %114 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %115 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %116 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @vnt_control_out_u8(%struct.vnt_private* %113, i32 %114, i32 231, i32 %119)
  br label %121

121:                                              ; preds = %108, %102
  %122 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %123 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 0, i32* %125, align 4
  %126 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %127 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %121, %93
  %131 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %132 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %133 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @vnt_set_vga_gain_offset(%struct.vnt_private* %131, i32 %136)
  ret void
}

declare dso_local i32 @vnt_mac_set_bb_type(%struct.vnt_private*, i64) #1

declare dso_local i32 @vnt_get_pkt_type(%struct.vnt_private*) #1

declare dso_local i32 @vnt_control_out_u8(%struct.vnt_private*, i32, i32, i32) #1

declare dso_local i32 @vnt_update_ifs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_set_rspinf(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_set_vga_gain_offset(%struct.vnt_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
