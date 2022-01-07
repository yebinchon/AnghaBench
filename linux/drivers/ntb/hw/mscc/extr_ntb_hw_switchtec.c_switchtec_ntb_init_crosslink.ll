; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_crosslink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_crosslink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32*, i32, i32, i32, i64, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Using crosslink configuration\0A\00", align 1
@NTB_TOPO_CROSSLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error enumerating crosslink partition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SWITCHTEC_GAS_NTB_OFFSET = common dso_local global i32 0, align 4
@SWITCHTEC_NTB_REG_DBMSG_OFFSET = common dso_local global i32 0, align 4
@LUT_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switchtec_ntb*)* @switchtec_ntb_init_crosslink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_init_crosslink(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switchtec_ntb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %3, align 8
  %11 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %12 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %17 = call i32 @crosslink_is_enabled(%struct.switchtec_ntb* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

20:                                               ; preds = %1
  %21 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %22 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %21, i32 0, i32 6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @NTB_TOPO_CROSSLINK, align 4
  %27 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %28 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %32 = call i32 @crosslink_enum_partition(%struct.switchtec_ntb* %30, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %35 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %20
  %40 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %41 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %40, i32 0, i32 6
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %137

47:                                               ; preds = %20
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = load i32, i32* @SWITCHTEC_GAS_NTB_OFFSET, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @SWITCHTEC_NTB_REG_DBMSG_OFFSET, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %56 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = add i64 %54, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @LUT_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %70 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %71 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %74 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @config_rsvd_lut_win(%struct.switchtec_ntb* %69, i32 %72, i32 1, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %47
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %137

82:                                               ; preds = %47
  %83 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @crosslink_setup_mws(%struct.switchtec_ntb* %83, i32 1, i32* %84, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %137

92:                                               ; preds = %82
  %93 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %94 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %95 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @crosslink_setup_req_ids(%struct.switchtec_ntb* %93, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %137

102:                                              ; preds = %92
  %103 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %104 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %103, i32 0, i32 6
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @LUT_SIZE, align 4
  %110 = load i32, i32* @LUT_SIZE, align 4
  %111 = call i64 @pci_iomap_range(i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %113 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %115 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %137

122:                                              ; preds = %102
  %123 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %124 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %130 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  %131 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %132 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %136 = call i32 @crosslink_init_dbmsgs(%struct.switchtec_ntb* %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %122, %118, %100, %90, %80, %39, %19
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @crosslink_is_enabled(%struct.switchtec_ntb*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @crosslink_enum_partition(%struct.switchtec_ntb*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @config_rsvd_lut_win(%struct.switchtec_ntb*, i32, i32, i32, i32) #1

declare dso_local i32 @crosslink_setup_mws(%struct.switchtec_ntb*, i32, i32*, i32) #1

declare dso_local i32 @crosslink_setup_req_ids(%struct.switchtec_ntb*, i32) #1

declare dso_local i64 @pci_iomap_range(i32, i32, i32, i32) #1

declare dso_local i32 @crosslink_init_dbmsgs(%struct.switchtec_ntb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
