; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st21nfca_i2c_phy = type { i32, i64, i32, i32*, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IRQ\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@wait_tab = common dso_local global i32* null, align 8
@ST21NFCA_HCI_LLC_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st21nfca_hci_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.st21nfca_i2c_phy*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.st21nfca_i2c_phy*
  store %struct.st21nfca_i2c_phy* %10, %struct.st21nfca_i2c_phy** %6, align 8
  %11 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %12 = icmp ne %struct.st21nfca_i2c_phy* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %16 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %15, i32 0, i32 5
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %2
  %22 = call i32 @WARN_ON_ONCE(i32 1)
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %141

24:                                               ; preds = %13
  %25 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %26 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %25, i32 0, i32 5
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %7, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %32 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %141

37:                                               ; preds = %24
  %38 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %39 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %40 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @st21nfca_hci_i2c_read(%struct.st21nfca_i2c_phy* %38, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @EREMOTEIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %50 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %52 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nfc_hci_recv_frame(i32 %53, i32* null)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %141

56:                                               ; preds = %37
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %141

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @EBADMSG, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %75 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** @wait_tab, align 8
  %78 = call i64 @ARRAY_SIZE(i32* %77)
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  %81 = load i32*, i32** @wait_tab, align 8
  %82 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %83 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @msleep(i32 %86)
  %88 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %89 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %93 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %95 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @kfree_skb(i32* %96)
  br label %117

98:                                               ; preds = %73, %68
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %103 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %106 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @nfc_hci_recv_frame(i32 %104, i32* %107)
  %109 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %110 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %116

111:                                              ; preds = %98
  %112 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %113 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @kfree_skb(i32* %114)
  br label %116

116:                                              ; preds = %111, %101
  br label %117

117:                                              ; preds = %116, %80
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_SIZE, align 4
  %121 = mul nsw i32 %120, 2
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i32* @alloc_skb(i32 %121, i32 %122)
  %124 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %125 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %124, i32 0, i32 3
  store i32* %123, i32** %125, align 8
  %126 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %127 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %119
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  %133 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %134 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %6, align 8
  %136 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @nfc_hci_recv_frame(i32 %137, i32* null)
  br label %139

139:                                              ; preds = %130, %119
  %140 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %66, %47, %35, %21
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @st21nfca_hci_i2c_read(%struct.st21nfca_i2c_phy*, i32*) #1

declare dso_local i32 @nfc_hci_recv_frame(i32, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32* @alloc_skb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
