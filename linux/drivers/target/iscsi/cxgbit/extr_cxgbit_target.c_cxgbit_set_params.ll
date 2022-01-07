; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__*, %struct.iscsi_conn_ops*, %struct.cxgbit_sock* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.iscsi_conn_ops = type { i64 }
%struct.cxgbit_sock = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.cxgbit_device* }
%struct.cxgbit_device = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.cxgbi_ppm** }
%struct.cxgbi_ppm = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.iscsi_param = type { i32 }

@ERRORRECOVERYLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"param not found key %s\0A\00", align 1
@CDEV_ISO_ENABLE = common dso_local global i32 0, align 4
@CDEV_DDP_ENABLE = common dso_local global i32 0, align 4
@CSK_DDP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @cxgbit_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_set_params(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.cxgbit_device*, align 8
  %6 = alloca %struct.cxgbi_ppm*, align 8
  %7 = alloca %struct.iscsi_conn_ops*, align 8
  %8 = alloca %struct.iscsi_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 4
  %13 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %12, align 8
  store %struct.cxgbit_sock* %13, %struct.cxgbit_sock** %4, align 8
  %14 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %15 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.cxgbit_device*, %struct.cxgbit_device** %16, align 8
  store %struct.cxgbit_device* %17, %struct.cxgbit_device** %5, align 8
  %18 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %19 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.cxgbit_device*, %struct.cxgbit_device** %20, align 8
  %22 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.cxgbi_ppm**, %struct.cxgbi_ppm*** %23, align 8
  %25 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %24, align 8
  store %struct.cxgbi_ppm* %25, %struct.cxgbi_ppm** %6, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 3
  %28 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %27, align 8
  store %struct.iscsi_conn_ops* %28, %struct.iscsi_conn_ops** %7, align 8
  %29 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %7, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn_ops, %struct.iscsi_conn_ops* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %33 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %38 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %7, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn_ops, %struct.iscsi_conn_ops* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %44 = call i64 @cxgbit_set_digest(%struct.cxgbit_sock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %139

47:                                               ; preds = %42
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i32, i32* @ERRORRECOVERYLEVEL, align 4
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %55, i32 %58)
  store %struct.iscsi_param* %59, %struct.iscsi_param** %8, align 8
  %60 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %61 = icmp ne %struct.iscsi_param* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @ERRORRECOVERYLEVEL, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %2, align 4
  br label %139

65:                                               ; preds = %54
  %66 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @kstrtou8(i32 %68, i32 0, i32* %9)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %139

72:                                               ; preds = %65
  br label %81

73:                                               ; preds = %47
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %73, %72
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %138, label %84

84:                                               ; preds = %81
  %85 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %86 = call i32 @cxgbit_seq_pdu_inorder(%struct.cxgbit_sock* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %2, align 4
  br label %139

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %95 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @is_t5(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %116

101:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %139

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* @CDEV_ISO_ENABLE, align 4
  %105 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %106 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %105, i32 0, i32 1
  %107 = call i64 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %111 = call i64 @cxgbit_set_iso_npdu(%struct.cxgbit_sock* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 -1, i32* %2, align 4
  br label %139

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* @CDEV_DDP_ENABLE, align 4
  %118 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %119 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %118, i32 0, i32 1
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %124 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %6, align 8
  %125 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @cxgbit_setup_conn_pgidx(%struct.cxgbit_sock* %123, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 -1, i32* %2, align 4
  br label %139

131:                                              ; preds = %122
  %132 = load i32, i32* @CSK_DDP_ENABLE, align 4
  %133 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %134 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = call i32 @set_bit(i32 %132, i32* %135)
  br label %137

137:                                              ; preds = %131, %116
  br label %138

138:                                              ; preds = %137, %81
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %130, %113, %101, %89, %71, %62, %46
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @cxgbit_set_digest(%struct.cxgbit_sock*) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @kstrtou8(i32, i32, i32*) #1

declare dso_local i32 @cxgbit_seq_pdu_inorder(%struct.cxgbit_sock*) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @cxgbit_set_iso_npdu(%struct.cxgbit_sock*) #1

declare dso_local i64 @cxgbit_setup_conn_pgidx(%struct.cxgbit_sock*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
