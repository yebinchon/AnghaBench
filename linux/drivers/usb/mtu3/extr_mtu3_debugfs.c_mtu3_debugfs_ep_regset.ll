; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_ep_regset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_ep_regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32 }
%struct.mtu3_ep = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.debugfs_reg32 = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TCR0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RCR0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TCR1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RCR1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TCR2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"RCR2\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"TQHIAR\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"RQHIAR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"TQCSR\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"RQCSR\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"TQSAR\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"RQSAR\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"TQCPR\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"RQCPR\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ep-regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*, %struct.mtu3_ep*, %struct.dentry*)* @mtu3_debugfs_ep_regset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtu3_debugfs_ep_regset(%struct.mtu3* %0, %struct.mtu3_ep* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.mtu3*, align 8
  %5 = alloca %struct.mtu3_ep*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.debugfs_reg32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %4, align 8
  store %struct.mtu3_ep* %1, %struct.mtu3_ep** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %10 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %11 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %14 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mtu3*, %struct.mtu3** %4, align 8
  %17 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.debugfs_reg32* @devm_kcalloc(i32 %18, i32 7, i32 16, i32 %19)
  store %struct.debugfs_reg32* %20, %struct.debugfs_reg32** %7, align 8
  %21 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %22 = icmp ne %struct.debugfs_reg32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %172

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %29 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %30 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %29, i64 0
  %31 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @MU3D_EP_TXCR0(i32 %35)
  br label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MU3D_EP_RXCR0(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %43 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %42, i64 0
  %44 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %49 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %50 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %49, i64 1
  %51 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @MU3D_EP_TXCR1(i32 %55)
  br label %60

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @MU3D_EP_RXCR1(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  %62 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %63 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %62, i64 1
  %64 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %69 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %70 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %69, i64 2
  %71 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @MU3D_EP_TXCR2(i32 %75)
  br label %80

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @MU3D_EP_RXCR2(i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i32 [ %76, %74 ], [ %79, %77 ]
  %82 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %83 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %82, i64 2
  %84 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %89 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %90 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %89, i64 3
  %91 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @USB_QMU_TQHIAR(i32 %95)
  br label %100

97:                                               ; preds = %80
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @USB_QMU_RQHIAR(i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i32 [ %96, %94 ], [ %99, %97 ]
  %102 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %103 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %102, i64 3
  %104 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %109 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %110 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %109, i64 4
  %111 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @USB_QMU_TQCSR(i32 %115)
  br label %120

117:                                              ; preds = %100
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @USB_QMU_RQCSR(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  %122 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %123 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %122, i64 4
  %124 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %129 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %130 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %129, i64 5
  %131 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @USB_QMU_TQSAR(i32 %135)
  br label %140

137:                                              ; preds = %120
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @USB_QMU_RQSAR(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i32 [ %136, %134 ], [ %139, %137 ]
  %142 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %143 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %142, i64 5
  %144 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %149 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %150 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %149, i64 6
  %151 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %140
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @USB_QMU_TQCPR(i32 %155)
  br label %160

157:                                              ; preds = %140
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @USB_QMU_RQCPR(i32 %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i32 [ %156, %154 ], [ %159, %157 ]
  %162 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %163 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %162, i64 6
  %164 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load %struct.mtu3*, %struct.mtu3** %4, align 8
  %166 = load %struct.mtu3*, %struct.mtu3** %4, align 8
  %167 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %170 = load %struct.dentry*, %struct.dentry** %6, align 8
  %171 = call i32 @mtu3_debugfs_regset(%struct.mtu3* %165, i32 %168, %struct.debugfs_reg32* %169, i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.dentry* %170)
  br label %172

172:                                              ; preds = %160, %23
  ret void
}

declare dso_local %struct.debugfs_reg32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @MU3D_EP_TXCR0(i32) #1

declare dso_local i32 @MU3D_EP_RXCR0(i32) #1

declare dso_local i32 @MU3D_EP_TXCR1(i32) #1

declare dso_local i32 @MU3D_EP_RXCR1(i32) #1

declare dso_local i32 @MU3D_EP_TXCR2(i32) #1

declare dso_local i32 @MU3D_EP_RXCR2(i32) #1

declare dso_local i32 @USB_QMU_TQHIAR(i32) #1

declare dso_local i32 @USB_QMU_RQHIAR(i32) #1

declare dso_local i32 @USB_QMU_TQCSR(i32) #1

declare dso_local i32 @USB_QMU_RQCSR(i32) #1

declare dso_local i32 @USB_QMU_TQSAR(i32) #1

declare dso_local i32 @USB_QMU_RQSAR(i32) #1

declare dso_local i32 @USB_QMU_TQCPR(i32) #1

declare dso_local i32 @USB_QMU_RQCPR(i32) #1

declare dso_local i32 @mtu3_debugfs_regset(%struct.mtu3*, i32, %struct.debugfs_reg32*, i32, i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
